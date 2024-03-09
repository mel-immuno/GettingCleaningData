---
title: "CodeBook"
author: "Melanie"
date: "2024-03-08"
output: md_document
---

## Project Description
The purpose of this project is to demonstrate our ability to collect, work and clean a data set following the tidy data rules for the "Assignment 4", and prepare a new tidy data file that could be used for further analysis

## Study design and data processing
The raw data files are extracted from the publication **Anguita et al. (2012)**. The experiments were conducted on 30 volunteers (also called "subject") aged between 19 and 48 years old and wearing a smartphone (Samsung Galaxy S II) on the waist. Each volunteer performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 

### Collection of the raw data
With the embedded accelerometer and gyroscope in the smartphone, data from 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were collected by the authors. Below are a description of the collected data and files used in this assignment

### Notes on the original (raw) data 
The dataset was divided into a training set (70%) and a test set (30%). Each of the training and test sets have a file containing the data "X_...", a file with the subject id "subject_...", a file with the activity id "Y_..." as well as a folder called "Inertial signals" with unprocessed data. These folders were not used for this assignment.


## Creating the tidy datafile

### Guide to create the tidy data file

        
[README.Rmd](https://github.com/mel-immuno/GettingCleaningData/blob/main/README.md)

##Description of the variables in the tiny_data.txt file

The file is composed of 180 rows and 81 columns. The data are the average of each variable for each volunteer for each activity. A single row only represents one activity by one volunteer. With 30 volunteers and 6 activities, 180 rows are hence composing this dataset. Among the 81 columns, 2 columns are column id "subject" and "activity" and 79 columns represent the 79 variables. The variables are the mean and standard deviation for each measurement extracted from the "X_train.txt" and "X_test.txt" files.


### Variable 1: subject
        class: integer
        values: 1 to 30
        Each value is a volunteer

### Variable 2: activity
        class: character
        values: "walking", "walking_up" = WLAKING_UPSTAIRS, "walking_down" = WALKING_DOWNSTAIRS, "sitting", "standing", "laying"

### Variable 3: tBodyAcc-mean()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': accelaration of the body
        'mean()': mean processed by the authors
        'X': axial

### Variable 4: "tBodyAcc-mean()-Y 
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': acceleration of the body
        'mean()': mean processed by the authors
        'Y': axial
 
### Variable 5: tBodyAcc-mean()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': acceleration of the body
        'mean()': mean processed by the authors
        'Z': axial
        
### Variable 6: tBodyAcc-std()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': acceleration of the body
        'std()': standard deviation processed by the authors
        'X': axial
        
### Variable 7: tBodyAcc-std()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': acceleration of the body
        'std()': standard deviation processed by the authors
        'Y': axial
        
### Variable 8: tBodyAcc-std()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': acceleration of the body
        'std()': standard deviation processed by the authors
        'Z': axial
        
### Variable 9: tGravityAcc-mean()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': gravity acceleration
        'mean()': mean processed by the authors
        'X': axial
        
### Variable 10: tGravityAcc-mean()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': gravity acceleration
        'mean()': mean processed by the authors
        'Y': axial
        
### Variable 11: tGravityAcc-mean()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': gravity acceleration
        'mean()': mean processed by the authors
        'Z': axial
        
### Variable 12: tGravityAcc-std()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': gravity acceleration
        'std()': standard deviation processed by the authors
        'X': axial
        
### Variable 13: tGravityAcc-std()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': gravity acceleration
        'std()': standard deviation processed by the authors
        'Y': axial
        
### Variable 14: tGravityAcc-std()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': gravity acceleration
        'std()': standard deviation processed by the authors
        'Z': axial
        
### Variable 15: tBodyAccJerk-mean()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': acceleration of the body
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'X': axial
        
### Variable 16: tBodyAccJerk-mean()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': acceleration of the body
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'Y': axial
        
### Variable 17:tBodyAccJerk-mean()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': acceleration of the body
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'Z': axial
        
### Variable 18: tBodyAccJerk-std()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': acceleration of the body
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'X': axial
        
### Variable 19: tBodyAccJerk-std()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': acceleration of the body
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'Y': axial
        
### Variable 20: tBodyAccJerk-std()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': acceleration of the body
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'Z': axial
        
### Variable 21: tBodyGyro-mean()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'mean()': mean processed by the authors
        'X': axial
        
### Variable 22: tBodyGyro-mean()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'mean()': mean processed by the authors
        'Y': axial
        
### Variable 23: tBodyGyro-mean()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'mean()': mean processed by the authors
        'Z': axial
        
### Variable 24: tBodyGyro-std()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'std()': standard deviation processed by the authors
        'X': axial
        
### Variable 25: tBodyGyro-std()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'std()': standard deviation processed by the authors
        'Y': axial
        
### Variable 26: tBodyGyro-std()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'std()': standard deviation processed by the authors
        'Z': axial
        
### Variable 27: tBodyGyroJerk-mean()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'X': axial
        
### Variable 28: tBodyGyroJerk-mean()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'Y': axial
        
### Variable 29: tBodyGyroJerk-mean()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'Z': axial
        
### Variable 30: tBodyGyroJerk-std()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'X': axial
        
### Variable 31: tBodyGyroJerk-std()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'Y': axial
        
### Variable 32: tBodyGyroJerk-std()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'Z': axial
        
### Variable 33: tBodyAccMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': Body acceleration signal
        'Mag': processed for Euclidean norm
        'mean()': mean processed by the authors
        
### Variable 34: tBodyAccMag-std()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': Body acceleration signal
        'Mag': processed for Euclidean norm
        'std()': standard deviation processed by the authors
        
### Variable 35: tGravityAccMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': Gravity acceleration signal
        'Mag': processed for Euclidean norm
        'mean()': mean processed by the authors
        
### Variable 36: tGravityAccMag-std()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'GravityAcc': Gravity acceleration signal
        'Mag': processed for Euclidean norm
        'std()': standard deviation processed by the authors
        
### Variable 37: tBodyAccJerkMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': Body acceleration signal
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'mean()': mean processed by the authors
        
### Variable 38: tBodyAccJerkMag-std() 
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyAcc': Body acceleration signal
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'std()': standard deviation processed by the authors
        
### Variable 39: tBodyGyroMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Mag': processed for Euclidean norm
        'mean()': mean processed by the authors
        
### Variable 40: tBodyGyroMag-std()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Mag': processed for Euclidean norm
        'std()': standard deviation processed by the authors
        
### Variable 41: tBodyGyroJerkMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'mean()': mean processed by the authors
        
### Variable 42: tBodyGyroJerkMag-std()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        't': time
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'std()': standard deviation processed by the authors
        
### Variable 43: fBodyAcc-mean()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'mean()': mean processed by the authors
        'X': axial
        
### Variable 44: fBodyAcc-mean()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'mean()': mean processed by the authors
        'Y': axial
        
### Variable 45: fBodyAcc-mean()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'mean()': mean processed by the authors
        'Z': axial
        
### Variable 46: fBodyAcc-std()-X        
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'std()': standard deviation processed by the authors
        'X': axial
        
### Variable 47: fBodyAcc-std()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'std()': standard deviation processed by the authors
        'Y': axial
        
### Variable 48: fBodyAcc-std()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'std()': standard deviation processed by the authors
        'Z': axial
        
### Variable 49: fBodyAcc-meanFreq()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
        'X': axial
        
### Variable 50: fBodyAcc-meanFreq()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
        'Y': axial
        
### Variable 51: fBodyAcc-meanFreq()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
        'Z': axial
        
### Variable 52: fBodyAccJerk-mean()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'X': axial
        
### Variable 53: fBodyAccJerk-mean()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'Y': axial
        
### Variable 54: fBodyAccJerk-mean()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'mean()': mean processed by the authors
        'Z': axial
        
### Variable 55: fBodyAccJerk-std()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'X': axial
        
### Variable 56: fBodyAccJerk-std()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'Y': axial
        
### Variable 57: fBodyAccJerk-std()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'std()': standard deviation processed by the authors
        'Z': axial
        
### Variable 58: fBodyAccJerk-meanFreq()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
        'X': axial
        
### Variable 59: fBodyAccJerk-meanFreq()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
        'Y': axial
        
### Variable 60: fBodyAccJerk-meanFreq()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleration
        'Jerk': Jerk signal
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
        'Z': axial
        
### Variable 61: fBodyGyro-mean()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'mean()': mean value
        'X': axial
        
### Variable 62: fBodyGyro-mean()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'mean()': mean value
        'Y': axial
        
### Variable 63: fBodyGyro-mean()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'mean()': mean value
        'Z': axial
        
### Variable 64: fBodyGyro-std()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'std()': standard deviation
        'X': axial
        
### Variable 65: fBodyGyro-std()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'std()': standard deviation
        'Y': axial
        
### Variable 66: fBodyGyro-std()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'std()': standard deviation
        'Z': axial
        
### Variable 67: fBodyGyro-meanFreq()-X
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'meanFeq()': Weighted average of the frequency components to obtain a mean frequency
        'X': axial
        
### Variable 68: fBodyGyro-meanFreq()-Y
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'meanFeq()': Weighted average of the frequency components to obtain a mean frequency
        'Y': axial
        
### Variable 69: fBodyGyro-meanFreq()-Z
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'meanFeq()': Weighted average of the frequency components to obtain a mean frequency
        'Z': axial
        
### Variable 70: fBodyAccMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleraion
        'Mag': processed for Euclidean norm
        'mean()': mean value
 
### Variable 71: fBodyAccMag-std()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleraion
        'Mag': processed for Euclidean norm
        'std()': standard deviation
 
### Variable 72: fBodyAccMag-meanFreq()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleraion
        'Mag': processed for Euclidean norm
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
 
### Variable 73: fBodyBodyAccJerkMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleraion
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'mean()': mean value
 
### Variable 74: fBodyBodyAccJerkMag-std()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleraion
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'std()': standard deviation
 
### Variable 75: fBodyBodyAccJerkMag-meanFreq()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyAcc': Body acceleraion
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
 
### Variable 76: fBodyBodyGyroMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'Mag': processed for Euclidean norm
        'mean()': mean value
        
### Variable 77: fBodyBodyGyroMag-std()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'Mag': processed for Euclidean norm
        'std()': standard deviation
    
### Variable 78: fBodyBodyGyroMag-meanFreq()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'Mag': processed for Euclidean norm
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
    
### Variable 79: fBodyBodyGyroJerkMag-mean()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'mean()': mean value
        
### Variable 80: fBodyBodyGyroJerkMag-std()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'std()': standard deviation
    
### Variable 81: fBodyBodyGyroJerkMag-meanFreq()
        class: numeric
        values: average of measurements, bounded within [-1,1]
        'f': frequency domain signals, Fast Fourier Transformed data
        'BodyGyro': Gyroscope data
        'Jerk': Jerk signal
        'Mag': processed for Euclidean norm
        'meanFreq()': Weighted average of the frequency components to obtain a mean frequency
    

## Sources
The original publication: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

For the codebook template: https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41

This assigment followed the advice provided by David Hood that can be found: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
