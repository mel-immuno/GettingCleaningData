## read files
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_df <- read.table("UCI HAR Dataset/activity_labels.txt")

## upload library
library(dplyr)
library(stringi)
library(plyr)
library(reshape2)

## merge datasets
trainset <- list(subject_train, Y_train) %>%
        cbind(X_train)
testset <- list(subject_test, Y_test) %>%
        cbind(X_test)

all_data <- rbind(trainset, testset)

## cleaning data
names <- c("subject", "activity", features[,2])
colnames(all_data) <- names

selected_data <- all_data[,grepl("subject|activity|mean|std", colnames(all_data))]

selected_data$activity <- stri_replace_all_regex(selected_data$activity,
                                                 pattern=c(1, 2, 3, 4, 5, 6),
                                                 replacement=c("walking", "walking_up", "walking_down", "sitting", "standing", "laying"),
                                                 vectorize=FALSE)

## preparing new tidy dataset
tidy_dataset <- selected_data %>%
        group_by(subject, activity) %>%
        mutate(across(where(is.numeric), mean)) %>%
        unique()

tidy_dataset <- arrange(tidy_dataset, subject, activity)

write.table(tidy_dataset, file = "tidy_dataset.txt")

tidy_dataset <- read.table("tidy_dataset.txt", header = TRUE)
