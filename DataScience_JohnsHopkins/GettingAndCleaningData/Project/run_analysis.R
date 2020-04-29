# Pasos a seguir:

## Data download and unzip 

# string variables for file download
fileName <- "UCIdata.zip"
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir <- "UCI HAR Dataset"

# File download verification. If file does not exist, download to working directory.
if(!file.exists(fileName)){
  download.file(url,fileName, mode = "wb") 
}

# File unzip verification. If the directory does not exist, unzip the downloaded file.
if(!file.exists(dir)){
  unzip("UCIdata.zip", files = NULL, exdir=".")
}





# 1. Cargar los datos, 

X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")

X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")


#3. Unir los datos en un solo dataset
Xmerged <- rbind(X_train, X_test)
ymerged <- rbind(y_train, y_test)
subjectmerged <- rbind(subject_train, subject_test)

mergedData <- cbind(subjectmerged, ymerged, Xmerged)


# 4. Cargo el txt con las etiquetas
features <- read.delim("UCI HAR Dataset\\features.txt", header=FALSE)
features_list <- features[ ,1]


# 5. Features with mean() and std()
mean_features = sort(c(grep("mean\\(\\)$",features_list), grep("mean\\(\\)-[XYZ]$",features_list)))
std_features = sort(c(grep("std\\(\\)$",features_list), grep("std\\(\\)-[XYZ]$",features_list)))
meanAndStdFeatures_positions = sort(c(mean_features, std_features))
meanAndStdFeatures = features_list[meanAndStdFeatures_positions]


# 6. Edito las etiquetas antes seleccionadas, eliminando el número que las precede
meanAndStdFeatures<-sub(" ", "", meanAndStdFeatures)

x <- c("0","1","2","3","4","5","6","7","8","9")
for (val in x) {
  meanAndStdFeatures <- sub(val, "", meanAndStdFeatures)
}
# Es necesario hacer dos pasadas
for (val in x) {
  meanAndStdFeatures <- sub(val, "", meanAndStdFeatures)
}


# 7. Descriptive activity names
#lastcolumn = dim(mergedData)[2]
#y = mergedData[ ,lastcolumn]
y = list(ymerged)

y = rapply(y,function(x) ifelse(x==1,"WALKING",x), how = "replace")
y = rapply(y,function(x) ifelse(x==2,"WALKING_UPSTAIRS",x), how = "replace")
y = rapply(y,function(x) ifelse(x==3,"WALKING_DOWNSTAIRS",x), how = "replace")
y = rapply(y,function(x) ifelse(x==4,"SITTING",x), how = "replace")
y = rapply(y,function(x) ifelse(x==5,"STANDING",x), how = "replace")
y = rapply(y,function(x) ifelse(x==6,"LAYING",x), how = "replace")




# Selected columns
subjectMeanStdYData = cbind(subjectmerged, y,mergedData[ , meanAndStdFeatures_positions])
subjectMeanStdYData = data.frame(subjectMeanStdYData)
subjectMeanStdYData_header = c("Subject", "Activity", meanAndStdFeatures)
names(subjectMeanStdYData) <- subjectMeanStdYData_header 

#########################################


# check if reshape2 package is installed
if (!"reshape2" %in% installed.packages()) {
  install.packages("reshape2")
}
library("reshape2")

# melt data to tall skinny data and cast means. Finally write the tidy data to the working directory as "tidy_data.txt"
baseData <- melt(subjectMeanStdYData,(id.vars=c("Subject","Activity")))
secondDataSet <- dcast(baseData, Subject + Activity ~ variable, mean)
names(secondDataSet)[-c(1:2)] <- paste("[mean of]" , names(secondDataSet)[-c(1:2)] )
write.table(secondDataSet, "tidy_data.txt", sep = ",")


