# Getting and Cleaning Data Course Project

This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data", available in Coursera.

## Goal

The goal of the accompanying script, `run_analysis.R`, is to meet the following objectives set in the Getting and Cleaning Data Peer Review Project: 

1. Merge the training and the test sets to create one data set
2. Extract only the measurements on the mean and standard deviation for each measurement
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject

## Solution

### Files

- `README.md`: this file
- `Codebook.md`: describes the how to use all this, variables, the data, and any transformations or work that was performed to clean up the data
- `run_analysis.R`: R file contaning the code to perform the analysis required on the project. It generated the file "tidy_dataset.txt"  

### Install

```
$ git clone https://github.com/mtribaldos/Getting_and_Cleaning_Data.git
```

### Usage

Enter the R command line interpreter and simply type:

```
> cd Getting_and_Cleaning_Data/
> source("run_analysis.R")
> run_analysis()
```

The first time the function `run_analysis()` gets executed, it downloads the original dataset from the internet, so it's not needed the user to perform previously this step.
Once the completion of `run_analysis()` the file "tidy_dataset.txt" is created. This course project's form gets fed with the contents from this file.

### Additional Information

You can find additional information about the variables, data and transformations in the `CodeBook.md` file.
