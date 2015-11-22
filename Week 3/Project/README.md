Getting and Cleaning Data - Course Project
==========================================

This repository contains the R code and documentation files for the Data Science's track course "Getting and Cleaning data", available in coursera.

The dataset being used is: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files

The code takes for granted all the data is present in the same folder, un-compressed and without names altered.

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.

`run_analysis.R` contains the code to perform the analyses. The code's objective is to take the raw data provided in the working directory, and generate a tidy dataset as required by the assignment. 
 As long as the Samsung data folder (named "UCI HAR dataset") exists in the working directory, the code performs the following actions:

1. Combines the training and test data into a single dataset
2. Extracts the fields that relate to the mean and standard deviation measures only
3. Renames the headings to allow for detailed descriptions
4. Replaces the activity identifiers with a description of the activity.
5. Calculates the average of each field, by each of the 30 subjects, and each of the 6 activities.
6. Writes the table into a text file.


TidyData.txt is the output.