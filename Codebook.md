#CODEBOOK- Dataset information
##Author: NickMaki

* The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each volunteer code (1-30) is recorded in variable "person" 
* Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. These activities are recorded in the variable "activity" (see last column in the data set)
* Using its embedded accelerometer and gyroscope, captured 3-axial linear acceleration and 3-axial angular velocity.  
These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables listed in the final output (tidy_data.txt)  are **means of the variables by person and activity for the reported signals which calculate mean and std only** labeled by mean () or std() in the original data set. The final number of features (variables) reported is 79 variables plus one for the id of the person and one for the id of the activity (thus total 81 variables are in final data set) 

