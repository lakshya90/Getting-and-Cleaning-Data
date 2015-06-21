##Getting and Cleaning Data

The working directory contains the run_analysis.R file and all the data that is required without their initial names being altered.

CodeBook.md describes the variables, the data, and any transformations or work that have been performed to clean up the data.

run_analysis.R is a R script that performs the five steps as mentioned below:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The output of the above steps is a tidy data set present in the file names average_data.txt.