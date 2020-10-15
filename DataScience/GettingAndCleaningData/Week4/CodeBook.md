# CODE BOOK

This file contains all the variables and summaries calculated, along with units,
and any other relevant information about them.

-----------------------------------------------------------------------------------

## "activityLabels"

Contains the labels and the numbers associated to them, of 
the activities performed by the users. It only contains the features that were 
product of the calculation of the mean or the standard deviation of a variable.

'data.frame':	6 obs. of  2 variables:
 $ V1: int -> numbers
 $ V2: chr -> labels

-----------------------------------------------------------------------------------               

## "CombinedData"

It is the product of the merge of the train and test dataframes. 

'data.frame':	10299 obs. of  81 variables:
 $ subject                        : Factor w/ 30 levels -> subject number 
 $ activity                       : Factor w/ 6 levels -> label
 $ tBodyAcc-mean()-X              : num -> m/s^2
 $ tBodyAcc-mean()-Y              : num -> m/s^2
 $ tBodyAcc-mean()-Z              : num -> m/s^2
 $ tBodyAcc-std()-X               : num -> m/s^2
 $ tBodyAcc-std()-Y               : num -> m/s^2
 $ tBodyAcc-std()-Z               : num -> m/s^2
 $ tGravityAcc-mean()-X           : num -> m/s^2
 $ tGravityAcc-mean()-Y           : num -> m/s^2
 $ tGravityAcc-mean()-Z           : num -> m/s^2 
 $ tGravityAcc-std()-X            : num -> m/s^2 
 $ tGravityAcc-std()-Y            : num -> m/s^2 
 $ tGravityAcc-std()-Z            : num -> m/s^2
 $ tBodyAccJerk-mean()-X          : num -> m/s^3
 $ tBodyAccJerk-mean()-Y          : num -> m/s^3
 $ tBodyAccJerk-mean()-Z          : num -> m/s^3  
 $ tBodyAccJerk-std()-X           : num -> m/s^3 
 $ tBodyAccJerk-std()-Y           : num -> m/s^3 
 $ tBodyAccJerk-std()-Z           : num -> m/s^3 
 $ tBodyGyro-mean()-X             : num -> degrees/s  
 $ tBodyGyro-mean()-Y             : num -> degrees/s  
 $ tBodyGyro-mean()-Z             : num -> degrees/s  
 $ tBodyGyro-std()-X              : num -> degrees/s  
 $ tBodyGyro-std()-Y              : num -> degrees/s  
 $ tBodyGyro-std()-Z              : num -> degrees/s  
 $ tBodyGyroJerk-mean()-X         : num -> degrees/s^2 
 $ tBodyGyroJerk-mean()-Y         : num -> degrees/s^2  
 $ tBodyGyroJerk-mean()-Z         : num -> degrees/s^2  
 $ tBodyGyroJerk-std()-X          : num -> degrees/s^2 
 $ tBodyGyroJerk-std()-Y          : num -> degrees/s^2  
 $ tBodyGyroJerk-std()-Z          : num -> degrees/s^2  
 $ tBodyAccMag-mean()             : num -> m/s^2  
 $ tBodyAccMag-std()              : num -> m/s^2  
 $ tGravityAccMag-mean()          : num -> m/s^2 
 $ tGravityAccMag-std()           : num -> m/s^2  
 $ tBodyAccJerkMag-mean()         : num -> m/s^3 
 $ tBodyAccJerkMag-std()          : num -> m/s^3 
 $ tBodyGyroMag-mean()            : num -> degrees/s 
 $ tBodyGyroMag-std()             : num -> degrees/s 
 $ tBodyGyroJerkMag-mean()        : num -> degrees/s^2 
 $ tBodyGyroJerkMag-std()         : num -> degrees/s^2 
 $ fBodyAcc-mean()-X              : num -> m/s^2 
 $ fBodyAcc-mean()-Y              : num -> m/s^2 
 $ fBodyAcc-mean()-Z              : num -> m/s^2
 $ fBodyAcc-std()-X               : num -> m/s^2
 $ fBodyAcc-std()-Y               : num -> m/s^2 
 $ fBodyAcc-std()-Z               : num -> m/s^2 
 $ fBodyAcc-meanFreq()-X          : num -> m/s^2 
 $ fBodyAcc-meanFreq()-Y          : num -> m/s^2 
 $ fBodyAcc-meanFreq()-Z          : num -> m/s^2 
 $ fBodyAccJerk-mean()-X          : num -> m/s^3 
 $ fBodyAccJerk-mean()-Y          : num -> m/s^3  
 $ fBodyAccJerk-mean()-Z          : num -> m/s^3  
 $ fBodyAccJerk-std()-X           : num -> m/s^3  
 $ fBodyAccJerk-std()-Y           : num -> m/s^3  
 $ fBodyAccJerk-std()-Z           : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-X      : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-Y      : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-Z      : num -> m/s^3 
 $ fBodyGyro-mean()-X             : num -> degrees/s  
 $ fBodyGyro-mean()-Y             : num -> degrees/s 
 $ fBodyGyro-mean()-Z             : num -> degrees/s 
 $ fBodyGyro-std()-X              : num -> degrees/s
 $ fBodyGyro-std()-Y              : num -> degrees/s 
 $ fBodyGyro-std()-Z              : num -> degrees/s 
 $ fBodyGyro-meanFreq()-X         : num -> degrees/s
 $ fBodyGyro-meanFreq()-Y         : num -> degrees/s
 $ fBodyGyro-meanFreq()-Z         : num -> degrees/s 
 $ fBodyAccMag-mean()             : num -> m/s^2 
 $ fBodyAccMag-std()              : num -> m/s^2 
 $ fBodyAccMag-meanFreq()         : num -> m/s^2 
 $ fBodyBodyAccJerkMag-mean()     : num -> m/s^3 
 $ fBodyBodyAccJerkMag-std()      : num -> m/s^3 
 $ fBodyBodyAccJerkMag-meanFreq() : num -> m/s^3  
 $ fBodyBodyGyroMag-mean()        : num -> degrees/s  
 $ fBodyBodyGyroMag-std()         : num -> degrees/s  
 $ fBodyBodyGyroMag-meanFreq()    : num -> degrees/s  
 $ fBodyBodyGyroJerkMag-mean()    : num -> degrees/s^2  
 $ fBodyBodyGyroJerkMag-std()     : num -> degrees/s^2  
 $ fBodyBodyGyroJerkMag-meanFreq(): num -> degrees/s^2  

----------------------------------------------------------------------------------- 
               
## "CombinedData.mean"

It is the result of creating a tidy dataset with the mean of 
the features that were product of the calculation of the mean or the standard deviation
of a variable.

'data.frame':	180 obs. of  81 variables:
 $ subject                        : Factor w/ 30 levels -> subject number 
 $ activity                       : Factor w/ 6 levels -> label
 $ tBodyAcc-mean()-X              : num -> m/s^2
 $ tBodyAcc-mean()-Y              : num -> m/s^2
 $ tBodyAcc-mean()-Z              : num -> m/s^2
 $ tBodyAcc-std()-X               : num -> m/s^2
 $ tBodyAcc-std()-Y               : num -> m/s^2
 $ tBodyAcc-std()-Z               : num -> m/s^2
 $ tGravityAcc-mean()-X           : num -> m/s^2
 $ tGravityAcc-mean()-Y           : num -> m/s^2
 $ tGravityAcc-mean()-Z           : num -> m/s^2 
 $ tGravityAcc-std()-X            : num -> m/s^2 
 $ tGravityAcc-std()-Y            : num -> m/s^2 
 $ tGravityAcc-std()-Z            : num -> m/s^2
 $ tBodyAccJerk-mean()-X          : num -> m/s^3
 $ tBodyAccJerk-mean()-Y          : num -> m/s^3
 $ tBodyAccJerk-mean()-Z          : num -> m/s^3  
 $ tBodyAccJerk-std()-X           : num -> m/s^3 
 $ tBodyAccJerk-std()-Y           : num -> m/s^3 
 $ tBodyAccJerk-std()-Z           : num -> m/s^3 
 $ tBodyGyro-mean()-X             : num -> degrees/s  
 $ tBodyGyro-mean()-Y             : num -> degrees/s  
 $ tBodyGyro-mean()-Z             : num -> degrees/s  
 $ tBodyGyro-std()-X              : num -> degrees/s  
 $ tBodyGyro-std()-Y              : num -> degrees/s  
 $ tBodyGyro-std()-Z              : num -> degrees/s  
 $ tBodyGyroJerk-mean()-X         : num -> degrees/s^2 
 $ tBodyGyroJerk-mean()-Y         : num -> degrees/s^2  
 $ tBodyGyroJerk-mean()-Z         : num -> degrees/s^2  
 $ tBodyGyroJerk-std()-X          : num -> degrees/s^2 
 $ tBodyGyroJerk-std()-Y          : num -> degrees/s^2  
 $ tBodyGyroJerk-std()-Z          : num -> degrees/s^2  
 $ tBodyAccMag-mean()             : num -> m/s^2  
 $ tBodyAccMag-std()              : num -> m/s^2  
 $ tGravityAccMag-mean()          : num -> m/s^2 
 $ tGravityAccMag-std()           : num -> m/s^2  
 $ tBodyAccJerkMag-mean()         : num -> m/s^3 
 $ tBodyAccJerkMag-std()          : num -> m/s^3 
 $ tBodyGyroMag-mean()            : num -> degrees/s 
 $ tBodyGyroMag-std()             : num -> degrees/s 
 $ tBodyGyroJerkMag-mean()        : num -> degrees/s^2 
 $ tBodyGyroJerkMag-std()         : num -> degrees/s^2 
 $ fBodyAcc-mean()-X              : num -> m/s^2 
 $ fBodyAcc-mean()-Y              : num -> m/s^2 
 $ fBodyAcc-mean()-Z              : num -> m/s^2
 $ fBodyAcc-std()-X               : num -> m/s^2
 $ fBodyAcc-std()-Y               : num -> m/s^2 
 $ fBodyAcc-std()-Z               : num -> m/s^2 
 $ fBodyAcc-meanFreq()-X          : num -> m/s^2 
 $ fBodyAcc-meanFreq()-Y          : num -> m/s^2 
 $ fBodyAcc-meanFreq()-Z          : num -> m/s^2 
 $ fBodyAccJerk-mean()-X          : num -> m/s^3 
 $ fBodyAccJerk-mean()-Y          : num -> m/s^3  
 $ fBodyAccJerk-mean()-Z          : num -> m/s^3  
 $ fBodyAccJerk-std()-X           : num -> m/s^3  
 $ fBodyAccJerk-std()-Y           : num -> m/s^3  
 $ fBodyAccJerk-std()-Z           : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-X      : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-Y      : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-Z      : num -> m/s^3 
 $ fBodyGyro-mean()-X             : num -> degrees/s  
 $ fBodyGyro-mean()-Y             : num -> degrees/s 
 $ fBodyGyro-mean()-Z             : num -> degrees/s 
 $ fBodyGyro-std()-X              : num -> degrees/s
 $ fBodyGyro-std()-Y              : num -> degrees/s 
 $ fBodyGyro-std()-Z              : num -> degrees/s 
 $ fBodyGyro-meanFreq()-X         : num -> degrees/s
 $ fBodyGyro-meanFreq()-Y         : num -> degrees/s
 $ fBodyGyro-meanFreq()-Z         : num -> degrees/s 
 $ fBodyAccMag-mean()             : num -> m/s^2 
 $ fBodyAccMag-std()              : num -> m/s^2 
 $ fBodyAccMag-meanFreq()         : num -> m/s^2 
 $ fBodyBodyAccJerkMag-mean()     : num -> m/s^3 
 $ fBodyBodyAccJerkMag-std()      : num -> m/s^3 
 $ fBodyBodyAccJerkMag-meanFreq() : num -> m/s^3  
 $ fBodyBodyGyroMag-mean()        : num -> degrees/s  
 $ fBodyBodyGyroMag-std()         : num -> degrees/s  
 $ fBodyBodyGyroMag-meanFreq()    : num -> degrees/s  
 $ fBodyBodyGyroJerkMag-mean()    : num -> degrees/s^2  
 $ fBodyBodyGyroJerkMag-std()     : num -> degrees/s^2  
 $ fBodyBodyGyroJerkMag-meanFreq(): num -> degrees/s^2  

-----------------------------------------------------------------------------------  

## "CombinedData.melted"

Using the library "reshape2", the dataframe CombinedData is
transformed into a long format dataframe, which makes it easiear to calculate the
mean of the different features.        

'data.frame':	813621 obs. of  4 variables:
 $ subject : Factor w/ 30 levels -> subject number
 $ activity: Factor w/ 6 levels -> labels
 $ variable: Factor w/ 79 levels -> fe
 $ value   : num -> differen units of measure possible
-----------------------------------------------------------------------------------  

## "features"

Contains the feauture label and its ID.     

'data.frame':	561 obs. of  2 variables:
 $ V1: int -> numbers
 $ V2: chr -> labels

-----------------------------------------------------------------------------------                

## "meanAndStandarFeatures"

Row of each of the features analysed in the original txt file.  

int [1:79] -> numbers

-----------------------------------------------------------------------------------             

## "meanAndStandarFeatures.names"

Label of each of the features analysed in the original txt file.   

chr [1:79] -> labels

----------------------------------------------------------------------------------- 

## "test"

Test features analysed.

'data.frame':	2947 obs. of  81 variables:
 $ subject                        : Factor w/ 30 levels -> subject number 
 $ activity                       : Factor w/ 6 levels -> label
 $ tBodyAcc-mean()-X              : num -> m/s^2
 $ tBodyAcc-mean()-Y              : num -> m/s^2
 $ tBodyAcc-mean()-Z              : num -> m/s^2
 $ tBodyAcc-std()-X               : num -> m/s^2
 $ tBodyAcc-std()-Y               : num -> m/s^2
 $ tBodyAcc-std()-Z               : num -> m/s^2
 $ tGravityAcc-mean()-X           : num -> m/s^2
 $ tGravityAcc-mean()-Y           : num -> m/s^2
 $ tGravityAcc-mean()-Z           : num -> m/s^2 
 $ tGravityAcc-std()-X            : num -> m/s^2 
 $ tGravityAcc-std()-Y            : num -> m/s^2 
 $ tGravityAcc-std()-Z            : num -> m/s^2
 $ tBodyAccJerk-mean()-X          : num -> m/s^3
 $ tBodyAccJerk-mean()-Y          : num -> m/s^3
 $ tBodyAccJerk-mean()-Z          : num -> m/s^3  
 $ tBodyAccJerk-std()-X           : num -> m/s^3 
 $ tBodyAccJerk-std()-Y           : num -> m/s^3 
 $ tBodyAccJerk-std()-Z           : num -> m/s^3 
 $ tBodyGyro-mean()-X             : num -> degrees/s  
 $ tBodyGyro-mean()-Y             : num -> degrees/s  
 $ tBodyGyro-mean()-Z             : num -> degrees/s  
 $ tBodyGyro-std()-X              : num -> degrees/s  
 $ tBodyGyro-std()-Y              : num -> degrees/s  
 $ tBodyGyro-std()-Z              : num -> degrees/s  
 $ tBodyGyroJerk-mean()-X         : num -> degrees/s^2 
 $ tBodyGyroJerk-mean()-Y         : num -> degrees/s^2  
 $ tBodyGyroJerk-mean()-Z         : num -> degrees/s^2  
 $ tBodyGyroJerk-std()-X          : num -> degrees/s^2 
 $ tBodyGyroJerk-std()-Y          : num -> degrees/s^2  
 $ tBodyGyroJerk-std()-Z          : num -> degrees/s^2  
 $ tBodyAccMag-mean()             : num -> m/s^2  
 $ tBodyAccMag-std()              : num -> m/s^2  
 $ tGravityAccMag-mean()          : num -> m/s^2 
 $ tGravityAccMag-std()           : num -> m/s^2  
 $ tBodyAccJerkMag-mean()         : num -> m/s^3 
 $ tBodyAccJerkMag-std()          : num -> m/s^3 
 $ tBodyGyroMag-mean()            : num -> degrees/s 
 $ tBodyGyroMag-std()             : num -> degrees/s 
 $ tBodyGyroJerkMag-mean()        : num -> degrees/s^2 
 $ tBodyGyroJerkMag-std()         : num -> degrees/s^2 
 $ fBodyAcc-mean()-X              : num -> m/s^2 
 $ fBodyAcc-mean()-Y              : num -> m/s^2 
 $ fBodyAcc-mean()-Z              : num -> m/s^2
 $ fBodyAcc-std()-X               : num -> m/s^2
 $ fBodyAcc-std()-Y               : num -> m/s^2 
 $ fBodyAcc-std()-Z               : num -> m/s^2 
 $ fBodyAcc-meanFreq()-X          : num -> m/s^2 
 $ fBodyAcc-meanFreq()-Y          : num -> m/s^2 
 $ fBodyAcc-meanFreq()-Z          : num -> m/s^2 
 $ fBodyAccJerk-mean()-X          : num -> m/s^3 
 $ fBodyAccJerk-mean()-Y          : num -> m/s^3  
 $ fBodyAccJerk-mean()-Z          : num -> m/s^3  
 $ fBodyAccJerk-std()-X           : num -> m/s^3  
 $ fBodyAccJerk-std()-Y           : num -> m/s^3  
 $ fBodyAccJerk-std()-Z           : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-X      : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-Y      : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-Z      : num -> m/s^3 
 $ fBodyGyro-mean()-X             : num -> degrees/s  
 $ fBodyGyro-mean()-Y             : num -> degrees/s 
 $ fBodyGyro-mean()-Z             : num -> degrees/s 
 $ fBodyGyro-std()-X              : num -> degrees/s
 $ fBodyGyro-std()-Y              : num -> degrees/s 
 $ fBodyGyro-std()-Z              : num -> degrees/s 
 $ fBodyGyro-meanFreq()-X         : num -> degrees/s
 $ fBodyGyro-meanFreq()-Y         : num -> degrees/s
 $ fBodyGyro-meanFreq()-Z         : num -> degrees/s 
 $ fBodyAccMag-mean()             : num -> m/s^2 
 $ fBodyAccMag-std()              : num -> m/s^2 
 $ fBodyAccMag-meanFreq()         : num -> m/s^2 
 $ fBodyBodyAccJerkMag-mean()     : num -> m/s^3 
 $ fBodyBodyAccJerkMag-std()      : num -> m/s^3 
 $ fBodyBodyAccJerkMag-meanFreq() : num -> m/s^3  
 $ fBodyBodyGyroMag-mean()        : num -> degrees/s  
 $ fBodyBodyGyroMag-std()         : num -> degrees/s  
 $ fBodyBodyGyroMag-meanFreq()    : num -> degrees/s  
 $ fBodyBodyGyroJerkMag-mean()    : num -> degrees/s^2  
 $ fBodyBodyGyroJerkMag-std()     : num -> degrees/s^2  
 $ fBodyBodyGyroJerkMag-meanFreq(): num -> degrees/s^2  

----------------------------------------------------------------------------------- 
                       
## "testActivities"

ID of each of the activities in the test set.   

'data.frame':	2947 obs. of  1 variable:
 $ V1: int -> numbers 

----------------------------------------------------------------------------------- 
             
## "testSubjects"

ID of each of the subjects in the test set.                 

'data.frame':	2947 obs. of  1 variable:
 $ V1: int -> numbers

----------------------------------------------------------------------------------- 

## "train"

Train features analysed.

'data.frame':	7352 obs. of  81 variables:
 $ subject                        : Factor w/ 30 levels -> subject number 
 $ activity                       : Factor w/ 6 levels -> label
 $ tBodyAcc-mean()-X              : num -> m/s^2
 $ tBodyAcc-mean()-Y              : num -> m/s^2
 $ tBodyAcc-mean()-Z              : num -> m/s^2
 $ tBodyAcc-std()-X               : num -> m/s^2
 $ tBodyAcc-std()-Y               : num -> m/s^2
 $ tBodyAcc-std()-Z               : num -> m/s^2
 $ tGravityAcc-mean()-X           : num -> m/s^2
 $ tGravityAcc-mean()-Y           : num -> m/s^2
 $ tGravityAcc-mean()-Z           : num -> m/s^2 
 $ tGravityAcc-std()-X            : num -> m/s^2 
 $ tGravityAcc-std()-Y            : num -> m/s^2 
 $ tGravityAcc-std()-Z            : num -> m/s^2
 $ tBodyAccJerk-mean()-X          : num -> m/s^3
 $ tBodyAccJerk-mean()-Y          : num -> m/s^3
 $ tBodyAccJerk-mean()-Z          : num -> m/s^3  
 $ tBodyAccJerk-std()-X           : num -> m/s^3 
 $ tBodyAccJerk-std()-Y           : num -> m/s^3 
 $ tBodyAccJerk-std()-Z           : num -> m/s^3 
 $ tBodyGyro-mean()-X             : num -> degrees/s  
 $ tBodyGyro-mean()-Y             : num -> degrees/s  
 $ tBodyGyro-mean()-Z             : num -> degrees/s  
 $ tBodyGyro-std()-X              : num -> degrees/s  
 $ tBodyGyro-std()-Y              : num -> degrees/s  
 $ tBodyGyro-std()-Z              : num -> degrees/s  
 $ tBodyGyroJerk-mean()-X         : num -> degrees/s^2 
 $ tBodyGyroJerk-mean()-Y         : num -> degrees/s^2  
 $ tBodyGyroJerk-mean()-Z         : num -> degrees/s^2  
 $ tBodyGyroJerk-std()-X          : num -> degrees/s^2 
 $ tBodyGyroJerk-std()-Y          : num -> degrees/s^2  
 $ tBodyGyroJerk-std()-Z          : num -> degrees/s^2  
 $ tBodyAccMag-mean()             : num -> m/s^2  
 $ tBodyAccMag-std()              : num -> m/s^2  
 $ tGravityAccMag-mean()          : num -> m/s^2 
 $ tGravityAccMag-std()           : num -> m/s^2  
 $ tBodyAccJerkMag-mean()         : num -> m/s^3 
 $ tBodyAccJerkMag-std()          : num -> m/s^3 
 $ tBodyGyroMag-mean()            : num -> degrees/s 
 $ tBodyGyroMag-std()             : num -> degrees/s 
 $ tBodyGyroJerkMag-mean()        : num -> degrees/s^2 
 $ tBodyGyroJerkMag-std()         : num -> degrees/s^2 
 $ fBodyAcc-mean()-X              : num -> m/s^2 
 $ fBodyAcc-mean()-Y              : num -> m/s^2 
 $ fBodyAcc-mean()-Z              : num -> m/s^2
 $ fBodyAcc-std()-X               : num -> m/s^2
 $ fBodyAcc-std()-Y               : num -> m/s^2 
 $ fBodyAcc-std()-Z               : num -> m/s^2 
 $ fBodyAcc-meanFreq()-X          : num -> m/s^2 
 $ fBodyAcc-meanFreq()-Y          : num -> m/s^2 
 $ fBodyAcc-meanFreq()-Z          : num -> m/s^2 
 $ fBodyAccJerk-mean()-X          : num -> m/s^3 
 $ fBodyAccJerk-mean()-Y          : num -> m/s^3  
 $ fBodyAccJerk-mean()-Z          : num -> m/s^3  
 $ fBodyAccJerk-std()-X           : num -> m/s^3  
 $ fBodyAccJerk-std()-Y           : num -> m/s^3  
 $ fBodyAccJerk-std()-Z           : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-X      : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-Y      : num -> m/s^3  
 $ fBodyAccJerk-meanFreq()-Z      : num -> m/s^3 
 $ fBodyGyro-mean()-X             : num -> degrees/s  
 $ fBodyGyro-mean()-Y             : num -> degrees/s 
 $ fBodyGyro-mean()-Z             : num -> degrees/s 
 $ fBodyGyro-std()-X              : num -> degrees/s
 $ fBodyGyro-std()-Y              : num -> degrees/s 
 $ fBodyGyro-std()-Z              : num -> degrees/s 
 $ fBodyGyro-meanFreq()-X         : num -> degrees/s
 $ fBodyGyro-meanFreq()-Y         : num -> degrees/s
 $ fBodyGyro-meanFreq()-Z         : num -> degrees/s 
 $ fBodyAccMag-mean()             : num -> m/s^2 
 $ fBodyAccMag-std()              : num -> m/s^2 
 $ fBodyAccMag-meanFreq()         : num -> m/s^2 
 $ fBodyBodyAccJerkMag-mean()     : num -> m/s^3 
 $ fBodyBodyAccJerkMag-std()      : num -> m/s^3 
 $ fBodyBodyAccJerkMag-meanFreq() : num -> m/s^3  
 $ fBodyBodyGyroMag-mean()        : num -> degrees/s  
 $ fBodyBodyGyroMag-std()         : num -> degrees/s  
 $ fBodyBodyGyroMag-meanFreq()    : num -> degrees/s  
 $ fBodyBodyGyroJerkMag-mean()    : num -> degrees/s^2  
 $ fBodyBodyGyroJerkMag-std()     : num -> degrees/s^2  
 $ fBodyBodyGyroJerkMag-meanFreq(): num -> degrees/s^2  

----------------------------------------------------------------------------------- 
                       
## "trainActivities"

ID of each of the activities in the train set. 

'data.frame':	7352 obs. of  1 variable:
 $ V1: int -> numbers

----------------------------------------------------------------------------------- 
          
## "trainSubjects"

ID of each of the subjects in the train set. 

'data.frame':	7352 obs. of  1 variable:
 $ V1: int -> numbers