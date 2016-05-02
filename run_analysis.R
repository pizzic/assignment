run_analysis <- function () {
	library(dplyr)
	
	# Set the data directory names.
	base_dir <- "UCI HAR Dataset"
	test_dir <- "test"
	train_dir <- "train"

	# Read the training and testing subject data.
	subject <- read.table(paste(base_dir, train_dir, "subject_train.txt", 
		sep="/"))
	subject <- rbind(subject, read.table(paste(base_dir, test_dir,
		"subject_test.txt", sep="/")))

	# Read the training and testing activity data.
	activity <- read.table(paste(base_dir, train_dir, "y_train.txt", sep="/"))
	activity <- rbind(activity, read.table(paste(base_dir, test_dir, "y_test.txt", 
		sep="/")))
	
	# Convert the activity index values into a factor with names from 
	# activity_labels.txt, removing underscores and lower casing.
	activity$V1 <- factor(activity$V1, levels=c("1","2","3","4","5","6"))
	names <- read.table(paste(base_dir, "activity_labels.txt", sep="/"))
	levels(activity$V1) <- gsub("_", " ", tolower(names$V2))

	# Read the training and testing data.
	data <- read.table(paste(base_dir, train_dir, "X_train.txt", sep="/"), 
		comment.char="", colClasses = "numeric")
	data <- rbind(data, read.table(paste(base_dir, test_dir, "X_test.txt", 
		sep="/"), comment.char="", colClasses = "numeric"))

	# Set the names of the data variables from features.txt, 
	# removing parentheses and hyphens plus lower casing.
	names <- read.table(paste(base_dir, "features.txt", sep="/"))
	names <- gsub("\\(|\\)|-", "", tolower(names$V2))
	names(data) <- names

	# Filter for variables whose names end in mean, mean[xyz], std, or std[xyz].
	columns <- grep("mean[xyz]?$|std[xyz]?$", names)
	data <- data[, columns]

	# Merge the data together into one data frame.
	data$activity <- activity$V1
	data$subject <- subject$V1

	# Write the resulting data frame to file.
	write.table(data, "data.txt", row.name=FALSE)

	# Take the mean of the data for each subject/activity.
	library(reshape2)
	meltedData <- melt(data, id=c("subject", "activity"))	
	datamean <- dcast(meltedData, subject + activity ~ variable, mean)
	write.table(datamean, "datamean.txt", row.name=FALSE)
	
	data
}