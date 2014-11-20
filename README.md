GettingAndCleaningData
======================

Getting and Cleaning Data for Coursera Project

The purpose of this project is to demonstrate my ability to collect, work with, 
and clean a data set. T

he goal is to prepare tidy data that can be used for later analysis.

The dataset used for the project is 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Files in this repository
•README.md -- you are reading it right now
•CodeBook.md -- codebook describing variables, the data and transformations
•run_analysis.R -- actual project R code

run_analysis.R

My goal is to create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with 
the average of each variable for each activity and each subject.

The dataset should be downloaded and the current working directory properly set 
in the R file before it is run.

The output is created in working directory with the name of TidySmartphoneData.txt
