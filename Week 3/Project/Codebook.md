#Course Assignment: Getting and Cleaning Data

##About the Code Book

This Codebook describes the variables of the raw data used, and also all the transformations and work performed to convert this raw data into the tidy dataset, which is the output required by the course assignment. 

##Raw data

Full details of the variables of the raw data are set out in the features.txt file. 

The variables consist of signals that are used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1. tBodyAcc-XYZ
2. tGravityAcc-XYZ
3. tBodyAccJerk-XYZ
4. tBodyGyro-XYZ
5. tBodyGyroJerk-XYZ
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10. tBodyGyroJerkMag
11. fBodyAcc-XYZ
12. fBodyAccJerk-XYZ
13. fBodyGyro-XYZ
14. fBodyAccMag
15. fBodyAccJerkMag
16. fBodyGyroMag
17. fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

1. mean(): Mean value
2. std(): Standard deviation
3. mad(): Median absolute deviation 
4. max(): Largest value in array
5. min(): Smallest value in array
6. sma(): Signal magnitude area
7. energy(): Energy measure. Sum of the squares divided by the number of values. 
8. iqr(): Interquartile range 
9. entropy(): Signal entropy
10. arCoeff(): Autorregresion coefficients with Burg order equal to 4
11. correlation(): correlation coefficient between two signals
12. maxInds(): index of the frequency component with largest magnitude
13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency
14. skewness(): skewness of the frequency domain signal 
15. kurtosis(): kurtosis of the frequency domain signal 
16. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
17. angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

1. gravityMean
2. tBodyAccMean
3. tBodyAccJerkMean
4. tBodyGyroMean
5. tBodyGyroJerkMean

##Transformations

The run_analysis.R code performs the following transformations:

1. Combines the training and test data into a single dataset.  The subject, activity and variables dataset are combined horizontally using the cbind function, and the resultant consolidated training and test data are then appended vertically to form a single consolidated dataset, with 563 variables. 

2. Extracts the variables that relate only to the mean and standard deviation measures, while retaining the Subject ID and Activity variables.  This reduces the number of variables to 68 variables.

3. The headings above are renamed to allow for more detailed descriptions that are more easily understood by the user.
"t" is renamed to "Time"
"f" is renamed to "Frequency"
"Gyro" is renamed to "Gyroscope"
"Acc" is renamed to "Accelerometer"
"Mag" is renamed to "Magnitude"
"Std" is renamed to "Standard Deviation"

4. Replaces the activity identifiers with a description of the activity. The numbers 1 to 6 which represent each of the activities are renamed the full activity description, i.e. "walking", "walking upstairs", "walking_downstairs", "sitting", "standing", "laying".  This is set out in the activity_labels.txt file.

5. Finally, the dataset is summarised, such that for each field, the average each is calculated, for each of the 30 subjects, and each of the 6 activities described in 4 above.  This reduces the number of rows in the dataset to 180 (30 subjects x 6 ).

##Transformed Variables

The transformed variables are listed below:

"Subject"
"Activity"
"Time Body Accelerometer Mean X"
"Time Body Accelerometer Mean Y"
"Time Body Accelerometer Mean Z"
"Time Body Accelerometer Standard Deviation X"
"Time Body Accelerometer Standard Deviation Y"
"Time Body Accelerometer Standard Deviation Z"
"Time Gravity Accelerometer Mean X"
"Time Gravity Accelerometer Mean Y"
"Time Gravity Accelerometer Mean Z"
"Time Gravity Accelerometer Standard Deviation X"
"Time Gravity Accelerometer Standard Deviation Y"
"Time Gravity Accelerometer Standard Deviation Z"
"Time Body Accelerometer Jerk Mean X"
"Time Body Accelerometer Jerk Mean Y"
"Time Body Accelerometer Jerk Mean Z"
"Time Body Accelerometer Jerk Standard Deviation X"
"Time Body Accelerometer Jerk Standard Deviation Y"
"Time Body Accelerometer Jerk Standard Deviation Z"
"Time Body Gyroscope Mean X"
"Time Body Gyroscope Mean Y"
"Time Body Gyroscope Mean Z"
"Time Body Gyroscope Standard Deviation X"
"Time Body Gyroscope Standard Deviation Y"
"Time Body Gyroscope Standard Deviation Z"
"Time Body Gyroscope Jerk Mean X"
"Time Body Gyroscope Jerk Mean Y"
"Time Body Gyroscope Jerk Mean Z"
"Time Body Gyroscope Jerk Standard Deviation X"
"Time Body Gyroscope Jerk Standard Deviation Y"
"Time Body Gyroscope Jerk Standard Deviation Z"
"Time Body Accelerometer Magnitude Mean "
"Time Body Accelerometer Magnitude Standard Deviation "
"Time Gravity Accelerometer Magnitude Mean "
"Time Gravity Accelerometer Magnitude Standard Deviation "
"Time Body Accelerometer Jerk Magnitude Mean "
"Time Body Accelerometer Jerk Magnitude Standard Deviation "
"Time Body Gyroscope Magnitude Mean "
"Time Body Gyroscope Magnitude Standard Deviation "
"Time Body Gyroscope Jerk Magnitude Mean "
"Time Body Gyroscope Jerk Magnitude Standard Deviation "
"Frequency Body Accelerometer Mean X"
"Frequency Body Accelerometer Mean Y"
"Frequency Body Accelerometer Mean Z"
"Frequency Body Accelerometer Standard Deviation X"
"Frequency Body Accelerometer Standard Deviation Y"
"Frequency Body Accelerometer Standard Deviation Z"
"Frequency Body Accelerometer Jerk Mean X"
"Frequency Body Accelerometer Jerk Mean Y"
"Frequency Body Accelerometer Jerk Mean Z"
"Frequency Body Accelerometer Jerk Standard Deviation X"
"Frequency Body Accelerometer Jerk Standard Deviation Y"
"Frequency Body Accelerometer Jerk Standard Deviation Z"
"Frequency Body Gyroscope Mean X"
"Frequency Body Gyroscope Mean Y"
"Frequency Body Gyroscope Mean Z"
"Frequency Body Gyroscope Standard Deviation X"
"Frequency Body Gyroscope Standard Deviation Y"
"Frequency Body Gyroscope Standard Deviation Z"
"Frequency Body Accelerometer Magnitude Mean "
"Frequency Body Accelerometer Magnitude Standard Deviation "
"Frequency Body Accelerometer Jerk Magnitude Mean "
"Frequency Body Accelerometer Jerk Magnitude Standard Deviation "
"Frequency Body Gyroscope Magnitude Mean "
"Frequency Body Gyroscope Magnitude Standard Deviation "
"Frequency Body Gyroscope Jerk Magnitude Mean "
"Frequency Body Gyroscope Jerk Magnitude Standard Deviation "