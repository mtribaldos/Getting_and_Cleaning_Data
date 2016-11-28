

run_analysis <- function() {
    #download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", dest="dataset.zip")
    #unzip("dataset.zip")

    # separator is ‘white space’, that is one or more spaces, tabs
    
    ## Read what will be become the data header
    data_header <- read.csv("UCI HAR Dataset/features.txt", sep = "", header = FALSE)[,2]

    ## Read the activity labels
    activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)
      
    ## Read and merge test and training data. Add the column names to the data
    test_data <- read.csv("UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
    train_data <- read.csv("UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
    merged_data <- rbind(test_data, train_data)   
    names(merged_data) <- data_header
      
    ## Read and merge test and training activity type. Add the column name to the activity types column
    test_types <- read.csv("UCI HAR Dataset/test/y_test.txt", sep = "", header = FALSE)
    train_types <- read.csv("UCI HAR Dataset/train/y_train.txt", sep = "", header = FALSE)
    merged_types <- rbind(test_types, train_types)
    names(merged_types) <- "activity"
   
    ## Reading and merge test and training subject ids. Add the column name to the subject id column
    test_subjects <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)
    train_subjects <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
    merged_subjects <- rbind(test_subjects, train_subjects)
    names(merged_subjects) <- "subject_id"
}  
