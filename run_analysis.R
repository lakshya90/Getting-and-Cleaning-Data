library(plyr)
#1. Merge the training and the test sets to create one data set.

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
sub_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
sub_test <- read.table("test/subject_test.txt")

x_data <- rbind(x_train,x_test)
y_data <- rbind(y_train,y_test)
sub_data <- rbind(sub_train,sub_test)

#2. Extract only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("features.txt")
mean_std <- grep("-(mean|std)\\(\\)",features[,2])
x_data <- x_data[,mean_std]
names(x_data)  <- features[mean_std,2]

#3. Use descriptive activity names to name the activities in the data set.
activity <- read.table("activity_labels.txt")
y_data[,1] <- activity[y_data[,1],2]
names(y_data) <- "activity"

#4. Appropriately label the data set with descriptive variable names. 
names(sub_data) <- "subject"
all_data <- cbind(x_data,y_data,sub_data)

#5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
average_data <- ddply(all_data,.(subject,activity),function(x) colMeans(x[,1:66]))
write.table(average_data,"average_data.txt",row.name=FALSE)
