# Getting and Cleaning Data - Johns Hopkins University through Coursera
# Course Project
# This is an original work by Nicolas Vacroux.  Questions can be emailed to nvacroux {at} yahoo.

# NOTE:  This script was developed and tested on a Windows 7 Professional system in R Studio.  While care has been taken
# to try and ensure system-independent functionality be aware that there may be issues on different system setups.

# IMPORTANT NOTE: The script assumes that the data is in the working directory.  This is per the course project instructions.
# If you need to download the raw data please refer to run_analysis-full_download_code.R which is located in the same
# GitHub repo.

# Load the test data into tables.
x_test <- read.table("X_test.txt")
y_test <- read.table("Y_test.txt")

# Load the train data into tables.
x_train <- read.table("X_train.txt")
y_train <- read.table("Y_train.txt")

# Load the labels for rows and columns.
activities <- read.table("activity_labels.txt")
features <- read.table("features.txt")

# Begin the process of combining the test and train data sets by labeling the columns.
colnames(x_test) <- features[,2]
colnames(x_train) <- features[,2]

# Combine y_test with x_test; combine y_train with x_train.  Name the activity column. 
test_temp <- cbind(y_test, x_test)
train_temp <- cbind(y_train, x_train)
colnames(test_temp)[1] <- "activity"
colnames(train_temp)[1] <- "activity"

# Combine the test and train datasets into one big dataset.
combined <- rbind(test_temp, train_temp)

# Determine which columns to keep, and create a "filtered" data set that contains only the specified columns.
match_cases <- c("mean", "std", "activity")
filtered <- combined[,grep(paste(match_cases, collapse = "|"), colnames(combined))]

# This is a very simple method to replace known index values for activity with descriptive names.  Yes, I realize that
# there are more elegant ways to do this but this is so clear I could not resist it.
filtered$activity[filtered$activity == 6] <- "laying"
filtered$activity[filtered$activity == 5] <- "standing"
filtered$activity[filtered$activity == 4] <- "sitting"
filtered$activity[filtered$activity == 3] <- "walking_downstairs"
filtered$activity[filtered$activity == 2] <- "walking_upstairs"
filtered$activity[filtered$activity == 1] <- "walking"

# This aggregates all the rows in the filtered table by activity and calculates a mean for each activity in each column.
# It subsequently creates a txt file with the activity_means table.
activity_means <- aggregate(filtered[,-1], by = list(filtered[,1]), FUN = mean)
write.table(activity_means, file = "activity_means.txt", row.name=FALSE)