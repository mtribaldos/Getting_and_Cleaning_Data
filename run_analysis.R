

run_analysis <- function() {
    #download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", dest="dataset.zip")
    #unzip("dataset.zip")

    # NOTE: in header arguments, separator is ‘white space’, that is one or more spaces, tabs
    
    ## Read and merge test and training data. 
    ## Add the column names to the data. Use the features file as its header
    ## Select only some features based on its name 
    test_features <- read.csv("UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
    train_features <- read.csv("UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
    features <- rbind(test_features, train_features)   
    names(features) <- read.csv("UCI HAR Dataset/features.txt", sep = "", header = FALSE)[,2]
    selected_features <- features[, grep(".*mean.*|.*std.*", names(features), ignore.case=TRUE)] 
      
    ## Read and merge test and training activity types. 
    ## Add the column name to the activity types column
    test_activities <- read.csv("UCI HAR Dataset/test/y_test.txt", sep = "", header = FALSE)
    train_activities <- read.csv("UCI HAR Dataset/train/y_train.txt", sep = "", header = FALSE)
    activities <- rbind(test_activities, train_activities)
    names(activities) <- "activity"
   
    ## Read and merge test and training subject ids. 
    ## Add the column name to the subject id column
    test_subjects <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)
    train_subjects <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
    subjects <- rbind(test_subjects, train_subjects)
    names(subjects) <- "SubjectId"

    ## Read the activity labels
    ## Substitute activity id for activity type (descriptive)
    activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)
    names(activity_labels) <- c("activity_id", "activity_type")
    activities <- merge(activities, activity_labels, by.x = "activity", by.y = "activity_id", all.x = TRUE)
    activity <- activities$activity_type

    ## Generate the definitive dataset
    dataset <- cbind(subjects, Activity = activity, selected_features)
    
    ## Enhance the column names to make it more descriptive
    names(dataset) <- gsub("Acc", "Accelerometer", names(dataset))
    names(dataset) <- gsub("Gyro", "Gyroscope", names(dataset))
    names(dataset) <- gsub("Mag", "Magnitude", names(dataset))
    names(dataset) <- gsub("^t", "Time", names(dataset))
    names(dataset) <- gsub("^f", "Frequency", names(dataset))
    names(dataset) <- gsub("-mean", "Mean", names(dataset))
    names(dataset) <- gsub("-std", "StandardDeviation", names(dataset))
    names(dataset) <- gsub("-freq", "Frequency", names(dataset))
    names(dataset) <- gsub("angle", "Angle", names(dataset))
    names(dataset) <- gsub("gravity", "Gravity", names(dataset))

    ## Calculate the mean of all variables after the "SubjectId" and "Activity" variables
    ## Order the observations in the result after "SubjectId" and "Activity" variables (again) 
    tidydataset <- aggregate(. ~ SubjectId + Activity, data = dataset, mean)
    tidydataset <- tidydataset[order(tidydataset$SubjectId, tidydataset$Activity),]

    ## Write the tidy dataset to a file
    write.table(tidydataset, file = "tidy_dataset.txt", row.names = FALSE)
}  
