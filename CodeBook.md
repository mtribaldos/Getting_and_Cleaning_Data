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

- Variable `activity_labels` becomes a dataframe from file `activity_labels.txt` 
- Variable `train_features` becomes a dataframe from file `X_train.txt`
- Variable `test_features` becomes a dataframe from file `X_test.txt`
- Variable `train_activities` becomes a dataframe from file `y_train.txt`
- Variable `test_activities` becomes a dataframe from file `y_test.txt`
- Variable `train_subjects` becomes a dataframe from file `subject_train.txt`
- Variable `test_subjects` becomes a dataframe from file `subject_test.txt`

### MERGE

- Variable `features` is a merge of the observations (rows) of the variables `train_features` and `test_features`
- Variable `activities` is a merge of the observations (rows) of the variables `train_activities` and `test_activities`
- Variable `subjects` is a merge of the observations (rows) of the variables `train_subjects` and `test_subjects`

### VARIABLE NAMING

- The columns from the dataset variable `features` get named according to the contents of the file `features.txt`
- The only column from the dataset variable `activities` gets named `activity`
- The only column from the dataset variable `subjects` gets named `SubjectId`

### SELECTION

- Variable `selected_features` is a selection of the required columns on the features dataset (the columns including in its name "mean" or "std")

### JOIN

- Variable `activity` becomes the descriptive name of the `activities` variable, by means of a join with with the `activity_labels` variable

### COMBINATION

- Variable `dataset` becomes the combination of the datasets from the `subjects`, `actitivities` and `selected_features` variables.

### VARIABLE (RE)NAMING

- The columns from the dataset variable `dataset` get renamed in order to make them more descriptive. The names for the dataset variables are the following:

| Name | 
| ---- | 
| SubjectId |
| Activity | 
| TimeBodyAccelerometerMean()-X
| TimeBodyAccelerometerMean()-Y
| TimeBodyAccelerometerMean()-Z
| TimeBodyAccelerometerStandardDeviation()-X
| TimeBodyAccelerometerStandardDeviation()-Y
| TimeBodyAccelerometerStandardDeviation()-Z
| TimeGravityAccelerometerMean()-X
| TimeGravityAccelerometerMean()-Y
| TimeGravityAccelerometerMean()-Z
| TimeGravityAccelerometerStandardDeviation()-X
| TimeGravityAccelerometerStandardDeviation()-Y
| TimeGravityAccelerometerStandardDeviation()-Z
| TimeBodyAccelerometerJerkMean()-X
| TimeBodyAccelerometerJerkMean()-Y
| TimeBodyAccelerometerJerkMean()-Z
| TimeBodyAccelerometerJerkStandardDeviation()-X
| TimeBodyAccelerometerJerkStandardDeviation()-Y
| TimeBodyAccelerometerJerkStandardDeviation()-Z
| TimeBodyGyroscopeMean()-X
| TimeBodyGyroscopeMean()-Y
| TimeBodyGyroscopeMean()-Z
| TimeBodyGyroscopeStandardDeviation()-X
| TimeBodyGyroscopeStandardDeviation()-Y
| TimeBodyGyroscopeStandardDeviation()-Z
| TimeBodyGyroscopeJerkMean()-X
| TimeBodyGyroscopeJerkMean()-Y
| TimeBodyGyroscopeJerkMean()-Z
| TimeBodyGyroscopeJerkStandardDeviation()-X
| TimeBodyGyroscopeJerkStandardDeviation()-Y
| TimeBodyGyroscopeJerkStandardDeviation()-Z
| TimeBodyAccelerometerMagnitudeMean()
| TimeBodyAccelerometerMagnitudeStandardDeviation()
| TimeGravityAccelerometerMagnitudeMean()
| TimeGravityAccelerometerMagnitudeStandardDeviation()
| TimeBodyAccelerometerJerkMagnitudeMean()
| TimeBodyAccelerometerJerkMagnitudeStandardDeviation()
| TimeBodyGyroscopeMagnitudeMean()
| TimeBodyGyroscopeMagnitudeStandardDeviation()
| TimeBodyGyroscopeJerkMagnitudeMean()
| TimeBodyGyroscopeJerkMagnitudeStandardDeviation()
| FrequencyBodyAccelerometerMean()-X
| FrequencyBodyAccelerometerMean()-Y
| FrequencyBodyAccelerometerMean()-Z
| FrequencyBodyAccelerometerStandardDeviation()-X
| FrequencyBodyAccelerometerStandardDeviation()-Y
| FrequencyBodyAccelerometerStandardDeviation()-Z
| FrequencyBodyAccelerometerMeanFreq()-X
| FrequencyBodyAccelerometerMeanFreq()-Y
| FrequencyBodyAccelerometerMeanFreq()-Z
| FrequencyBodyAccelerometerJerkMean()-X
| FrequencyBodyAccelerometerJerkMean()-Y
| FrequencyBodyAccelerometerJerkMean()-Z
| FrequencyBodyAccelerometerJerkStandardDeviation()-X
| FrequencyBodyAccelerometerJerkStandardDeviation()-Y
| FrequencyBodyAccelerometerJerkStandardDeviation()-Z
| FrequencyBodyAccelerometerJerkMeanFreq()-X
| FrequencyBodyAccelerometerJerkMeanFreq()-Y
| FrequencyBodyAccelerometerJerkMeanFreq()-Z
| FrequencyBodyGyroscopeMean()-X
| FrequencyBodyGyroscopeMean()-Y
| FrequencyBodyGyroscopeMean()-Z
| FrequencyBodyGyroscopeStandardDeviation()-X
| FrequencyBodyGyroscopeStandardDeviation()-Y
| FrequencyBodyGyroscopeStandardDeviation()-Z
| FrequencyBodyGyroscopeMeanFreq()-X
| FrequencyBodyGyroscopeMeanFreq()-Y
| FrequencyBodyGyroscopeMeanFreq()-Z
| FrequencyBodyAccelerometerMagnitudeMean()
| FrequencyBodyAccelerometerMagnitudeStandardDeviation()
| FrequencyBodyAccelerometerMagnitudeMeanFreq()
| FrequencyBodyBodyAccelerometerJerkMagnitudeMean()
| FrequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation()
| FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFreq()
| FrequencyBodyBodyGyroscopeMagnitudeMean()
| FrequencyBodyBodyGyroscopeMagnitudeStandardDeviation()
| FrequencyBodyBodyGyroscopeMagnitudeMeanFreq()
| FrequencyBodyBodyGyroscopeJerkMagnitudeMean()
| FrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation()
| FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq()
| Angle(tBodyAccelerometerMean,Gravity)
| Angle(tBodyAccelerometerJerkMean),GravityMean)
| Angle(tBodyGyroscopeMean,GravityMean)
| Angle(tBodyGyroscopeJerkMean,GravityMean)
| Angle(X,GravityMean)
| Angle(Y,GravityMean)
| Angle(Z,GravityMean)


## Output dataset

The output data is written to the file `tidy_dataset.txt`. Some traits of this file are:

- It has a header with a descriptive name for the variables
- The values are delimited by spaces 
- The values it contains are the average of each variable for each activity and each subject (according to the requirements)
