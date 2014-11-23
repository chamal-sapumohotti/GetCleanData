

readLargeFWFile <- function (dataFile, format){
  n <- readLines(dataFile)
  n<- length(n)
  
  chunkSize <- 200
  
  chunks <- floor(n / chunkSize)
  left <- n - chunks * chunkSize
  
  X <- read.fwf(dataFile, widths=format, n = chunkSize)
  
  for (a in 1:(chunks-1)){
    X_row <- read.fwf(dataFile, widths=format, skip = a * chunkSize,  n = chunkSize)
    X <- rbind(X, X_row)
    print(a)
  }
  
  X_row <- read.fwf(dataFile, widths=format, skip = chunks * chunkSize,  n = left)
  X <- rbind(X, X_row)
  X
}

format <- rep(c(-1, 15), 561)
trainFile <- "train//X_train.txt"
testFile <- "test//X_test.txt"
X_test <- readLargeFWFile(testFile, format)
X_train <- readLargeFWFile(trainFile, format)
X_all <- rbind(X_train, X_test)

subj_train <- read.table("train//subject_train.txt", header = F)
subj_test <- read.table("test//subject_test.txt", header = F)
activity_train <- read.table("train//y_train.txt", header = F)
activity_test <- read.table("test//y_test.txt", header = F)

subj_all <- rbind(subj_train, subj_test)
activity_all <- rbind(activity_train, activity_test)

#find columns which have mean and std.
features <- read.table("features.txt", sep=" ", header=F)
means <- grep('mean()', features$V2);
stds <- grep('std()', features$V2);
cols <- c(means, stds)
extractFeatures <- features[cols, ]
X_all <- X_all[, cols]

#add the subject and activity columns. 
dataSet <- cbind(X_all, subj_all, activity_all)

validNames <- make.names(as.character(extractFeatures$V2))
colNames <- c(validNames, 'subject', 'activityID')

#assign the column names.
names(dataSet) <- colNames

#exapand the activity column and remove the id.
actLab <- read.table("activity_labels.txt", header=F)
dataSet$activity <- factor(dataSet$activityID, levels=actLab$V1, labels=actLab$V2)
dataSet$activityID <- NULL

dataSet$subject <- as.factor(dataSet$subject)

##### extract means based on subject and activity.

subjects <- unique(dataSet$subject);
activities <- unique(dataSet$activity);

dataSet2 <- NULL;
for (s in subjects){
  for (a in activities){
    currData <- dataSet[dataSet$subject == s & dataSet$activity == a, 1:79];
    currRow <- sapply(currData, mean)
    currRow <- c(subject=s, activity=a, currRow)
    dataSet2 <- rbind(dataSet2, currRow)
    print(a)
  }
}

row.names(dataSet2) <- NULL

write.table(dataSet2, "tidyDataSet.txt", row.names=F, sep = ",", quote=F)
