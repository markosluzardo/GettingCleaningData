Introduction
===================

This assignment uses data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The features were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

The repository contains a `R` script `run_analysis.R` that performs cleaning operations on the employed dataset.

Usage
----

The raw data prior to cleaning can be found in: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script requires that the `zip` file is located at the root of the current working directory in `R` with the name `getdata-projectfiles-UCI HAR Dataset.zip`. In case is not, the script will download the file. By default the script will decompress the data in a directory called `Data`.

The script makes use of the `plyr` and `reshape` libraries, so this are required to be installed in order to produce results.

Output
----

The script creates two files containing cleansed data. The file `ucihardataset1.txt` is produced after following the operations described in the Code Book.

The file `ucihardataset2.txt` is produced after a summary operation computing the mean of the variables, grouped by subject and activity type.

CodeBook
----

A file containing the CodeBook of the cleansed data can be found in the repository as `CodeBook.md`.