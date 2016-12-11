# CodeBook

## Source dataset

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

The dataset used can be downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>. 

## Input dataset

The input dataset comprise the following data files (all located under the directory `UCI HAR Dataset`):

- `features.txt`: name of the dataset features
- `activity_labels.txt`: description on the different types of activities
- `X_train.txt`: variable features that are intended for training
- `X_test.txt`: variable features that are intended for testing
- `y_train.txt`: activities corresponding to `X_train.txt`
- `y_test.txt`: activities corresponding to `X_test.txt`
- `subject_train.txt`:  reference to the train feature observation subjects
- `subject_test.txt`: reference to the test feature observation subjects 


## Transformations

The transformations that have been performed on the input dataset are:

### READING 

- Variable `features` from file `features.txt` 
- Variable `activity_labels` from file `activity_labels.txt` 
- Variable `train_features` from file `X_train.txt`
- Variable `test_features` from file `X_test.txt`
- Variable `train_activities` from file `y_train.txt`
- Variable `test_activities` from file `y_test.txt`
- Variable `train_subjects` from file `subject_train.txt`
- Variable `test_subjects` from file `subject_test.txt`

### MERGE

- Variable `features` is a merge of the observations (rows) of the variables `train_features` and `test_features`
- Variable `activities` is a merge of the observations (rows) of the variables `train_activities` and `test_activities`
- Variable `subjects` is a merge of the observations (rows) of the variables `train_subjects` and `test_subjects` 

### SELECTION

- Variable `selected_features`

...

## Output Dataset

The output data is written to the file `tidy_dataset.txt`. Some traits of this file are:

- It has a header with a descriptive name for the variables
- The values are delimited by spaces 
- The values it contains are the average of each variable for each activity and each subject (according to the requirements)
