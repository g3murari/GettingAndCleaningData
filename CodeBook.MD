Code Book

Summary

This is the code book for the TidySmartphoneData.txt file produced for the 
Coursera "Getting and Cleaning Data" course project.

Human Activity Recognition Using Smartphones Dataset

The experiments have been carried out with a group of 30 volunteers within an 
age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial 
angular velocity at a constant rate of 50Hz. The experiments have been 
video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data. 

This data set includes only data on the mean and standard deviation features

Variables

SubjectID
•Description: The subject identifier
•Data Type/Units: integer
•Values: ◦1..30: Uniquely identifies 1 of 30 volunteers aged between 19-48 years.


Activity
•Description: 1 of 6 distinct activities during which the feature was measured
•Data Type/Units: string
•Values: 
◦LAYING
◦SITTING
◦STANDING
◦WALKING
◦WALKING_DOWNSTAIRS
◦WALKING_UPSTAIRS

X, Y, Z: axis of the feature
mean: Mean of the feature
std: Standard deviation of the feature

Data Labels
 [1] "SubjectID"                                 
 [2] "Activity"                                  
 [3] "time of BodyAcc - mean in X direction"     
 [4] "time of BodyAcc - mean in Y direction"     
 [5] "time of BodyAcc - mean in Z direction"     
 [6] "time of BodyAcc - std in X direction"      
 [7] "time of BodyAcc - std in Y direction"      
 [8] "time of BodyAcc - std in Z direction"      
 [9] "time of GravityAcc - mean in X direction"  
[10] "time of GravityAcc - mean in Y direction"  
[11] "time of GravityAcc - mean in Z direction"  
[12] "time of GravityAcc - std in X direction"   
[13] "time of GravityAcc - std in Y direction"   
[14] "time of GravityAcc - std in Z direction"   
[15] "time of BodyAccJerk - mean in X direction" 
[16] "time of BodyAccJerk - mean in Y direction" 
[17] "time of BodyAccJerk - mean in Z direction" 
[18] "time of BodyAccJerk - std in X direction"  
[19] "time of BodyAccJerk - std in Y direction"  
[20] "time of BodyAccJerk - std in Z direction"  
[21] "time of BodyGyro - mean in X direction"    
[22] "time of BodyGyro - mean in Y direction"    
[23] "time of BodyGyro - mean in Z direction"    
[24] "time of BodyGyro - std in X direction"     
[25] "time of BodyGyro - std in Y direction"     
[26] "time of BodyGyro - std in Z direction"     
[27] "time of BodyGyroJerk - mean in X direction"
[28] "time of BodyGyroJerk - mean in Y direction"
[29] "time of BodyGyroJerk - mean in Z direction"
[30] "time of BodyGyroJerk - std in X direction" 
[31] "time of BodyGyroJerk - std in Y direction" 
[32] "time of BodyGyroJerk - std in Z direction" 
[33] "time of BodyAccMag - mean"                 
[34] "time of BodyAccMag - std"                  
[35] "time of GravityAccMag - mean"              
[36] "time of GravityAccMag - std"               
[37] "time of BodyAccJerkMag - mean"             
[38] "time of BodyAccJerkMag - std"              
[39] "time of BodyGyroMag - mean"                
[40] "time of BodyGyroMag - std"                 
[41] "time of BodyGyroJerkMag - mean"            
[42] "time of BodyGyroJerkMag - std"             
[43] "FFT of BodyAcc - mean in X direction"      
[44] "FFT of BodyAcc - mean in Y direction"      
[45] "FFT of BodyAcc - mean in Z direction"      
[46] "FFT of BodyAcc - std in X direction"       
[47] "FFT of BodyAcc - std in Y direction"       
[48] "FFT of BodyAcc - std in Z direction"       
[49] "FFT of BodyAccJerk - mean in X direction"  
[50] "FFT of BodyAccJerk - mean in Y direction"  
[51] "FFT of BodyAccJerk - mean in Z direction"  
[52] "FFT of BodyAccJerk - std in X direction"   
[53] "FFT of BodyAccJerk - std in Y direction"   
[54] "FFT of BodyAccJerk - std in Z direction"   
[55] "FFT of BodyGyro - mean in X direction"     
[56] "FFT of BodyGyro - mean in Y direction"     
[57] "FFT of BodyGyro - mean in Z direction"     
[58] "FFT of BodyGyro - std in X direction"      
[59] "FFT of BodyGyro - std in Y direction"      
[60] "FFT of BodyGyro - std in Z direction"      
[61] "FFT of BodyAccMag - mean"                  
[62] "FFT of BodyAccMag - std"                   
[63] "FFT of BodyBodyAccJerkMag - mean"          
[64] "FFT of BodyBodyAccJerkMag - std"           
[65] "FFT of BodyBodyGyroMag - mean"             
[66] "FFT of BodyBodyGyroMag - std"              
[67] "FFT of BodyBodyGyroJerkMag - mean"         
[68] "FFT of BodyBodyGyroJerkMag - std" 

Average Description: Mean of the given feature variable by subject and activity
