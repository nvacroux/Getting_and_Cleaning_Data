# Getting and Cleaning Data - Johns Hopkins University through Coursera
# Course Project
# This is an original work by Nicolas Vacroux.  Questions can be emailed to nvacroux {at} yahoo {dot} com.

# NOTE:  This script was developed and tested on a Windows 7 Professional system in R Studio.  While care has been taken
# to try and ensure system-independent functionality be aware that there may be issues on different system setups.

# IMPORTANT NOTE: The script assumes that the data is in a folder named "UCI HAR Dataset", which resides in the working
# directory, as this is what would happen if you downloaded the data from the internet and unzipped it.

# The downlading and unzipping code below is not required in the Getting and Cleaning Data course project.  For peer grading
# purposes you should refer to run_analysis.R, which is contained in the same repo.

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "gacd_data.zip", mode = "wb")
unzip("gacd_data.zip")

# Define the home directory so that we can get back to it.
home_wd <- getwd()

# Load the test data into tables.
setwd(paste(getwd(), "/UCI HAR Dataset/test", sep=""))
x_test <- read.table("X_test.txt")
y_test <- read.table("Y_test.txt")
setwd(home_wd)

# Load the train data into tables.
setwd(paste(getwd(), "/UCI HAR Dataset/train", sep=""))
x_train <- read.table("X_train.txt")
y_train <- read.table("Y_train.txt")
setwd(home_wd)

# Load the labels for rows and columns.
setwd(paste(getwd(), "/UCI HAR Dataset", sep = ""))
activities <- read.table("activity_labels.txt")
features <- read.table("features.txt")
setwd(home_wd)

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
filtered <- combined[,intersect(grep(paste(match_cases, collapse = "|"), colnames(combined)), grep("Freq", colnames(combined), invert = TRUE))]

# This is a very simple method to replace known index values for activity with descriptive names.  Yes, I realize that
# there are more elegant ways to do this but this is so clear I could not resist it.
filtered$activity[filtered$activity == 6] <- "laying"
filtered$activity[filtered$activity == 5] <- "standing"
filtered$activity[filtered$activity == 4] <- "sitting"
filtered$activity[filtered$activity == 3] <- "walking_downstairs"
filtered$activity[filtered$activity == 2] <- "walking_upstairs"
filtered$activity[filtered$activity == 1] <- "walking"

# This aggregates all the rows in the filtered table by activity and calculates a mean for each column.  It subsequently
# creates a txt file with the activity_means table.
activity_means <- aggregate(filtered[,-1], by = list(filtered[,1]), FUN = mean)
write.table(activity_means, file = "activity_means.txt", row.name=FALSE)