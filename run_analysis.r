## 	Coursera Getting and Cleaning Data Course Project:
#	The purpose of this run_analysis.R script is to perform the following:
#	1.Merges the training and the test sets to create one data set.
#	2.Extracts only the measurements on the mean and standard deviation for each 
#		measurement. 
#	3.Uses descriptive activity names to name the activities in the data set
#	4.Appropriately labels the data set with descriptive variable names. 
#	5.From the data set in step 4, creates a second, independent tidy data set 
#		with the average of each variable for each activity and each subject.

## "1.Merges the training and the test sets to create one data set."

#	Step a: Set the working directory where the data files are available.
setwd (
"c:/Users/KanthimathiGayatri/Desktop/Coursera/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/")

## Step b: Read all the training data files into R.
trainX = read.table(file = "./train/X_train.txt") # raw data
trainY = read.table(file = "./train/y_train.txt") # activity encoded as numbers
unique (trainY)								# between 1-6. Verify using unique
trainSubject = read.table(file = "./train/subject_train.txt") # subject IDs as 
unique (trainSubject) 				# numbers between 1-30. Verify using unique

## Step c: Read all the test data files into R.
testX = read.table(file = "./test/X_test.txt") # raw data
testY = read.table(file = "./test/y_test.txt") # activity encoded as numbers
unique (testY)								# between 1-6. Verify using unique
testSubject = read.table(file = "./test/subject_test.txt") # subject IDs as 
unique (testSubject) 				# numbers between 1-30. Verify using unique

## Step d: Read the feature labels and activity labels
activityLabels = read.table("./activity_labels.txt")
featureLabels = read.table("./features.txt")

## Step e: Check if there is no overlap between test and training data sets
if (is.element(trainSubject, testSubject)) {
	print("Attention: There is overlap between test and training data sets")
}

# Let us assume no overlap between training and test data sets and proceed.
## Step f: Add the labels and merge the data sets.
names(trainX) = featureLabels [ , 2]
names(testX) = featureLabels [ , 2]
names(trainY) = names(testY) = "Activity"
names (trainSubject) = names (testSubject) = "SubjectID"
smartphoneData = rbind(trainX, testX)

## "2.Extracts only the measurements on the mean and standard deviation for each 
#		measurement."
colsMeanAndStdDev = grep("-(mean|std)\\(\\)", names(smartphoneData))
smartphoneData = smartphoneData[,colsMeanAndStdDev]

## Now add the Activity and Subject ID columns
smartphoneData = cbind (smartphoneData, rbind(trainY, testY), 
											rbind(trainSubject, testSubject))
											
## "3.Uses descriptive activity names to name the activities in the data set"
smartphoneData = merge(smartphoneData, activityLabels, 
												by.x = "Activity", by.y = "V1")
smartphoneData$Activity = NULL
names(smartphoneData)[names(smartphoneData)=="V2"] = "Activity"

## "4.Appropriately labels the data set with descriptive variable names."
names(smartphoneData) = gsub("\\(\\)", "", names(smartphoneData))
names(smartphoneData) = gsub("-X", " in X direction", names(smartphoneData))
names(smartphoneData) = gsub("-Y", " in Y direction", names(smartphoneData))
names(smartphoneData) = gsub("-Z", " in Z direction", names(smartphoneData))
names(smartphoneData) = gsub("-", " - ", names(smartphoneData))
names(smartphoneData) = gsub("^t", "time of ", names(smartphoneData))
names(smartphoneData) = gsub("^f", "FFT of ", names(smartphoneData))

## 5. From the data set in step 4, creates a second, independent tidy data set 
##		with the average of each variable for each activity and each subject.
library(reshape2) 
meltedData = melt(smartphoneData, id.vars=c("SubjectID", "Activity")) 
tidySmartphoneData = dcast(meltedData, SubjectID + Activity ~ variable, mean) 
write.table(tidySmartphoneData, "TidySmartphoneData.txt") 
