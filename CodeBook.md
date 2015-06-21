## About the code

run_analysis.R is the script file which gives us a tidy data set on performing the five steps required.

1. First, we merge all the similar data using the rbind() function. 
2. Then, only those columns with the mean and standard deviation measures are extracted and given the correct names, taken from features.txt.
3. As activity data is addressed with values 1:6, we take the activity names and IDs from activity_labels.txt and they are substituted in the dataset.
4. On the whole dataset, those columns with vague column names are corrected.
5. Finally, we generate a new dataset with all the average measures for each subject and activity type. The output file called average_data.txt is hence generated.

#Variables and Data
1. x_train, y_train, x_test, y_test, sub_train and sub_test contain the data from input files.
2. x_data, y_data and sub_data merge the previous datasets to further analysis.
3. features contains the correct names for the x_data dataset, which are applied to the column names stored in mean_std, a numeric vector used to extract the desired data.
4. A similar approach is taken with activity names through the activity variable.
5. all_data merges x_data, y_data and sub_data in a big dataset.
6. Finally, average_data contains the relevant averages. ddply() from the plyr package is used to apply colMeans() to generate output file.
