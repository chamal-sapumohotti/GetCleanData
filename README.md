To Use
======
* Simply copy the script to the samsung data directory and execute, 
* It will generate the tidyDataSet.txt file which contains the average of variables grouped by subject and activity for variables which contained the standard deviations and means from the original data set.
* please look at the codebook.md for code book.

Script Information
============
* The data files which contins the measurements are of fixed width format, so they are converted using format <- rep(c(-1, 15), 561)
* I had memory issues when I tried to read complete files, and it was really slow when I was reading line by line, so I created the function readLargeFWFile to read in a fixed width file in chunks of 200 lines.


Code Book
============
