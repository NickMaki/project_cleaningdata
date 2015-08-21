#README
##Author: NickMaki

The output of the run_analysis.R is a tidy data set (called tidy_data.txt) based on data for the project described at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used to prepare the tidy data set by the run_analysis.R code is at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To run this analysis:
* Install packages "dplyr", package "data.table" and package "reshape2" in R (Use install.packages(“nameofpackage”) )
* Uzip the data in your working directory (the directory you will be running the run_analysis.R code). The run_analysis.R specifically uses the following data: “X_train.txt”, “y_train.txt”, “subject_train.txt”, “X_test.txt”, “y_test.txt”, “subject_test.txt”, “activity_labels.txt”, “features.txt”

The R code in run_analysis.R performs the following steps in order to produce the tidy data:
* Merges all training data (features,activity and subject code) into one data frame
* Merges all test data (features,activity and subject code) into one data frame
* Binds (by row) the training and test data
* Uses proper names for activities from the file describing activities (activity_labels.txt)
* Uses proper names for features variables using the file describing features (features.txt)
* Selects only the features corresponding to mean and std of measures
* Melts data set by person and activity and takes means of all features by person and activity
* Writes the final data frame in a txt file called tidy_data.txt”

