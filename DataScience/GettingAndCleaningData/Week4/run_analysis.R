## This R Script has been created as the final project for the 
## course Getting and Cleaning Data taught by the Johns Hopkins
## University via the platform Coursera.
 
 
 
# Extraction of only the measurements on the mean and standard deviation for each measurement.

activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
 
meanAndStandarFeatures <- grep(".*mean.*|.*std.*",features[,2])
meanAndStandarFeatures.names <- features[meanAndStandarFeatures,2]
 


# Merge of the training and test sets to create one data set.

train <- read.table("./UCI HAR Dataset/train/X_train.txt")[meanAndStandarFeatures]
trainActivities <- read.table("./UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
 
train <- cbind(trainSubjects, trainActivities, train)


test <- read.table("./UCI HAR Dataset/test/X_test.txt")[meanAndStandarFeatures]
testActivities <- read.table("./UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

test <- cbind(testSubjects, testActivities, test)

CombinedData <- rbind(train, test)
  


# Appropriately labels the data set with descriptive variable names.
colnames(CombinedData) <- c("subject", "activity", meanAndStandarFeatures.names)
colnames(train) <- c("subject", "activity", meanAndStandarFeatures.names)
colnames(test) <- c("subject", "activity", meanAndStandarFeatures.names)



# Use of descriptive activity names to name the activities in the data set

CombinedData$activity <- factor(CombinedData$activity, 
                                levels = activityLabels[,1], 
                                labels = activityLabels[,2])

CombinedData$subject <- as.factor(CombinedData$subject)


# From the data set in step 4, an independent tidy data set is created with 
# the average of each variable for each activity and each subject.
 
library(reshape2)
CombinedData.melted <- melt(CombinedData, id = c("subject", "activity"))
CombinedData.mean <- dcast(CombinedData.melted, subject + activity ~ variable, mean)

# Upload complete data set as a txt file created with write.table() using row.name=FALSE
write.table(CombinedData.mean, file = "TidyDataSet.txt", 
row.names = FALSE, quote = FALSE)

