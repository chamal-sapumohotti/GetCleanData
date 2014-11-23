To Use
======
* Simply copy the script to the samsung data directory and execute, 
* It will generate the tidyDataSet.txt file which contains the average of variables grouped by subject and activity for variables which contained the standard deviations and means from the original data set.
* please look at the codebook.md for code book.

Script Information
==================
* The data files which contins the measurements are of fixed width format, so they are converted using format <- rep(c(-1, 15), 561)
* I had memory issues when I tried to read complete files, and it was really slow when I was reading line by line, so I created the function readLargeFWFile to read in a fixed width file in chunks of 200 lines.

Code Book
=========
* The activity column contains the activity of the subject.
* The subject column contains the subject id.

The columns derived from the original data set names are as follows, each of the derived columns contains the average of the variable grouped by subject and activity.

| Original column id|original column name            |derived column name             |
|------------------:|:-------------------------------|:-------------------------------|
|                  1|tBodyAcc-mean()-X               |tBodyAcc.mean...X               |
|                  2|tBodyAcc-mean()-Y               |tBodyAcc.mean...Y               |
|                  3|tBodyAcc-mean()-Z               |tBodyAcc.mean...Z               |
|                 41|tGravityAcc-mean()-X            |tGravityAcc.mean...X            |
|                 42|tGravityAcc-mean()-Y            |tGravityAcc.mean...Y            |
|                 43|tGravityAcc-mean()-Z            |tGravityAcc.mean...Z            |
|                 81|tBodyAccJerk-mean()-X           |tBodyAccJerk.mean...X           |
|                 82|tBodyAccJerk-mean()-Y           |tBodyAccJerk.mean...Y           |
|                 83|tBodyAccJerk-mean()-Z           |tBodyAccJerk.mean...Z           |
|                121|tBodyGyro-mean()-X              |tBodyGyro.mean...X              |
|                122|tBodyGyro-mean()-Y              |tBodyGyro.mean...Y              |
|                123|tBodyGyro-mean()-Z              |tBodyGyro.mean...Z              |
|                161|tBodyGyroJerk-mean()-X          |tBodyGyroJerk.mean...X          |
|                162|tBodyGyroJerk-mean()-Y          |tBodyGyroJerk.mean...Y          |
|                163|tBodyGyroJerk-mean()-Z          |tBodyGyroJerk.mean...Z          |
|                201|tBodyAccMag-mean()              |tBodyAccMag.mean..              |
|                214|tGravityAccMag-mean()           |tGravityAccMag.mean..           |
|                227|tBodyAccJerkMag-mean()          |tBodyAccJerkMag.mean..          |
|                240|tBodyGyroMag-mean()             |tBodyGyroMag.mean..             |
|                253|tBodyGyroJerkMag-mean()         |tBodyGyroJerkMag.mean..         |
|                266|fBodyAcc-mean()-X               |fBodyAcc.mean...X               |
|                267|fBodyAcc-mean()-Y               |fBodyAcc.mean...Y               |
|                268|fBodyAcc-mean()-Z               |fBodyAcc.mean...Z               |
|                294|fBodyAcc-meanFreq()-X           |fBodyAcc.meanFreq...X           |
|                295|fBodyAcc-meanFreq()-Y           |fBodyAcc.meanFreq...Y           |
|                296|fBodyAcc-meanFreq()-Z           |fBodyAcc.meanFreq...Z           |
|                345|fBodyAccJerk-mean()-X           |fBodyAccJerk.mean...X           |
|                346|fBodyAccJerk-mean()-Y           |fBodyAccJerk.mean...Y           |
|                347|fBodyAccJerk-mean()-Z           |fBodyAccJerk.mean...Z           |
|                373|fBodyAccJerk-meanFreq()-X       |fBodyAccJerk.meanFreq...X       |
|                374|fBodyAccJerk-meanFreq()-Y       |fBodyAccJerk.meanFreq...Y       |
|                375|fBodyAccJerk-meanFreq()-Z       |fBodyAccJerk.meanFreq...Z       |
|                424|fBodyGyro-mean()-X              |fBodyGyro.mean...X              |
|                425|fBodyGyro-mean()-Y              |fBodyGyro.mean...Y              |
|                426|fBodyGyro-mean()-Z              |fBodyGyro.mean...Z              |
|                452|fBodyGyro-meanFreq()-X          |fBodyGyro.meanFreq...X          |
|                453|fBodyGyro-meanFreq()-Y          |fBodyGyro.meanFreq...Y          |
|                454|fBodyGyro-meanFreq()-Z          |fBodyGyro.meanFreq...Z          |
|                503|fBodyAccMag-mean()              |fBodyAccMag.mean..              |
|                513|fBodyAccMag-meanFreq()          |fBodyAccMag.meanFreq..          |
|                516|fBodyBodyAccJerkMag-mean()      |fBodyBodyAccJerkMag.mean..      |
|                526|fBodyBodyAccJerkMag-meanFreq()  |fBodyBodyAccJerkMag.meanFreq..  |
|                529|fBodyBodyGyroMag-mean()         |fBodyBodyGyroMag.mean..         |
|                539|fBodyBodyGyroMag-meanFreq()     |fBodyBodyGyroMag.meanFreq..     |
|                542|fBodyBodyGyroJerkMag-mean()     |fBodyBodyGyroJerkMag.mean..     |
|                552|fBodyBodyGyroJerkMag-meanFreq() |fBodyBodyGyroJerkMag.meanFreq.. |
|                  4|tBodyAcc-std()-X                |tBodyAcc.std...X                |
|                  5|tBodyAcc-std()-Y                |tBodyAcc.std...Y                |
|                  6|tBodyAcc-std()-Z                |tBodyAcc.std...Z                |
|                 44|tGravityAcc-std()-X             |tGravityAcc.std...X             |
|                 45|tGravityAcc-std()-Y             |tGravityAcc.std...Y             |
|                 46|tGravityAcc-std()-Z             |tGravityAcc.std...Z             |
|                 84|tBodyAccJerk-std()-X            |tBodyAccJerk.std...X            |
|                 85|tBodyAccJerk-std()-Y            |tBodyAccJerk.std...Y            |
|                 86|tBodyAccJerk-std()-Z            |tBodyAccJerk.std...Z            |
|                124|tBodyGyro-std()-X               |tBodyGyro.std...X               |
|                125|tBodyGyro-std()-Y               |tBodyGyro.std...Y               |
|                126|tBodyGyro-std()-Z               |tBodyGyro.std...Z               |
|                164|tBodyGyroJerk-std()-X           |tBodyGyroJerk.std...X           |
|                165|tBodyGyroJerk-std()-Y           |tBodyGyroJerk.std...Y           |
|                166|tBodyGyroJerk-std()-Z           |tBodyGyroJerk.std...Z           |
|                202|tBodyAccMag-std()               |tBodyAccMag.std..               |
|                215|tGravityAccMag-std()            |tGravityAccMag.std..            |
|                228|tBodyAccJerkMag-std()           |tBodyAccJerkMag.std..           |
|                241|tBodyGyroMag-std()              |tBodyGyroMag.std..              |
|                254|tBodyGyroJerkMag-std()          |tBodyGyroJerkMag.std..          |
|                269|fBodyAcc-std()-X                |fBodyAcc.std...X                |
|                270|fBodyAcc-std()-Y                |fBodyAcc.std...Y                |
|                271|fBodyAcc-std()-Z                |fBodyAcc.std...Z                |
|                348|fBodyAccJerk-std()-X            |fBodyAccJerk.std...X            |
|                349|fBodyAccJerk-std()-Y            |fBodyAccJerk.std...Y            |
|                350|fBodyAccJerk-std()-Z            |fBodyAccJerk.std...Z            |
|                427|fBodyGyro-std()-X               |fBodyGyro.std...X               |
|                428|fBodyGyro-std()-Y               |fBodyGyro.std...Y               |
|                429|fBodyGyro-std()-Z               |fBodyGyro.std...Z               |
|                504|fBodyAccMag-std()               |fBodyAccMag.std..               |
|                517|fBodyBodyAccJerkMag-std()       |fBodyBodyAccJerkMag.std..       |
|                530|fBodyBodyGyroMag-std()          |fBodyBodyGyroMag.std..          |
|                543|fBodyBodyGyroJerkMag-std()      |fBodyBodyGyroJerkMag.std..      