# GettingCleaningData
Course project of Week 4 Getting and Cleaning Data

## Overview of the project
The purpose of this project is to demonstrate our ability to collect, work and clean a data set following the tidy data rules for the "Assignment 4", and prepare a new tidy data file that could be used for further analysis.


## Content of the repository
The repository contains 4 files  
- **'README.md'**: explaining the content of the repository and the script written to generate the 'tidy_dataset' file  
- **'CodeBook.md'**: giving an overview of the study design, detailing the raw data and describing the variables  
- **'AssignmentScript.R'**: the script written to work with the raw data files, including codes to clean and generate a new tidy data called 'tidy_dataset'  
-  **'tidy_dataset.txt'**: a newly generated table from the raw data files summarizing the average measurements for the selected variables per subject and activity  


## Description of the steps taken in the script 'AssignementScript.R'

1. **Download** the data from "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"  

2. **Read** the 8 files with read.table(path/"file.txt)  
        "X_train.txt"  
        "Y_train.txt"  
        "subject_train.txt"  
        "X_test.txt"  
        "Y_test.txt"  
        "subject_test.txt"  
        "features.txt"  
        "activity_labels.txt"  
        
3. **Load** the following 4 packages using library()  
        "dplyr"  
        "stringi  
        "plyr"  
        "reshape2"  
        
4. **Merge the datasets**  
        a. First the training and testing sets are processed separately  
        b. The values from the "subject_..." and Y_..." files are added to the "X_..." dataset in two separate columns using the cbind function.  The order of the rows rest unchanged for each file. At this point, the training set or test set contain each all the variables plus the volunteer id and the activity id  
        c. The training and testing sets are then merged using the the rbind() function. The data from the test set are added below the training set. At this point, the dataframe have 10,299 rows and 563 columns  
        d. The next step will consist in cleaning the data  

5. **Data cleaning**  
        a. The columns are names with "subject", "activity" and the name of the variables that can be found in the "features.txt" file.  
        b. Next, the variables containing "mean" or "std" are selected per instruction. To do so, one can use the grepl() function. After this steps, 79 variables are left out of the initial 561 variables.  
        c. The integer values in the "activity" column are replaced by the descriptive activity following the code provided by the file "activity_labels.txt". One can use the stri_replace_all_regex() function from the 'stringi' package. The values are assigned in the respective order listed in the replacement vector.  

6. **The final step is to create a new dataset called "tidy_dataset".**  
        a. For each subject and each activity, we have repeated measurements for each variable. We want to calculate the mean of these measurements for each subject, for each activity.  
        b. One can use the group_by() function from the 'dplyr' package which allow the following function to run according the requested group. Here, the data were grouped by subject and then activity.  
        c. The mutate() function from the 'dplyr' package is used to replace the values by the assigned function, here the mean() function.  
        d. By using the across() function from the 'dplyr' package, the mean will be calculated across the specified columns. Here the columns must have a numeric value. By doing so, we exclude the first two columns classed as integer and characters, representing the id columns. At this stage, the mean for the repeated measurements will be calculated for each subject, for each activity but we will have a table containing the same number of rows as the initial dataset. Duplicated row will be present.  
        e. Finally, by using the unique() function from 'dplyr', we remove all duplicates and obtain a clean dataset with only 180 rows.  
        f. An additional step to rearrange the dataset and order the table by subject followed by activity using the arrange() function.

## How to read the "tidy_dataset.txt" file
fileURL <- "https://github.com/mel-immuno/GettingCleaningData/blob/main/tidy_dataset.txt"  
download.file(fileURL, destfile = "tidy_dataset.txt", methods = "curl")  
read.table("/tidy_dataset.txt")
