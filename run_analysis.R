# Hello, Grader!

# Remember to set your working directory. 
# Here I will assume that all files are located exactly as the provided zip file is extracted.
# The working directory is then set to the top of these, "UCI HAR Dataset"
# Because the assignment clearly sttes that all data should already be in the working directory, 
# I have presumed it wound up there bby extracting the zip. Thusly, this script does not unzip it. 
# This question is addressed in the project forum.

# You will need the following packages installed, with all of their dependencies:
# dplyr

# Objective 1: "Merges the training and test sets to make 1 dataset."
# Objective 4: "Appropriately labels the data set with descriptive variable names"
# First, I will read in each provided data file.
# Next, I will assemble separate training and test sets out of these multiple provided data files.
# Then, I will merge the training a test sets.

# I will not be reading in the contents of inertial signals subfolders. 
# Our community teaching assistant, David, addresses this in the project discussion forum: 
# "https://class.coursera.org/getdata-013/forum/thread?thread_id=30"
# Where he says:
# "Do we need the inertial folder? 
# Short answer- no...Seems a lot easier just to not include them in the first place."

# Reading in each provided data file (except Inertial Signals):

features <- read.csv("features.txt", header = FALSE, sep="")
activitylabels <- read.csv("activity_labels.txt", header = FALSE, sep="")
xtrain <- read.csv("train/X_train.txt", header = FALSE, sep="")
ytrain <- read.csv("train/y_train.txt", header = FALSE, sep="")
subjecttrain <- read.csv("train/subject_train.txt", header = FALSE, sep="")
xtest <- read.csv("test/X_test.txt", header = FALSE, sep="")
ytest <- read.csv("test/y_test.txt", header = FALSE, sep="")
subjecttest <- read.csv("test/subject_test.txt", header = FALSE, sep="")

# At this point, please note that the training set will be made from 3 data files:
# ytrain, the labels for each test, 7352 of them, which will make up the first column 
# (Notice please that these range from 1 to 6, and will eventually correspond to words that 
# are held in the activity labels file.)
# subjecttrain, the identifiers of the person engaged in the activity
# Xtrain, the values for each test, 7352 observations across 561 variables
# Similarly, ytest has 2947 labels that will be the first column of the test set
# xtest has 2947 observations across 561 variables
# Notice please that the features file has 1 column of 561 rows, each element will become the
# column names of the 561 variables in the Xtrain and Xtest files.
# I will then append the test set rows to the bottom of the training set rows
# This will make 1 big united set that shares its column names in common, 10299 rows
# across 563 columns.

colnames(ytrain)="Activity"
colnames(subjecttrain)="Subject"
colnames(xtrain)=features$V2
trainingset <- cbind(ytrain,subjecttrain,xtrain)

colnames(ytest)="Activity"
colnames(subjecttest)="Subject"
colnames(xtest)=features$V2
testset <- cbind(ytest,subjecttest,xtest)

unitedset <- rbind(trainingset,testset)

# Now that I have my big united table, I can free up some memory by removing the raw component
# data files from the R Studio environment:

rm(features)
rm(ytrain)
rm(subjecttrain)
rm(xtrain)
rm(trainingset)
rm(ytest)
rm(subjecttest)
rm(xtest)
rm(testset)

# Leaving me with my big united table and my activity labels only.
# Also, just to make our next tasks easier, it's time to load the plyr and dplyr packages.
# Load plyr first, it matters.

library("plyr", lib.loc="~/R/win-library/3.1")
library("dplyr", lib.loc="~/R/win-library/3.1")

# and now I'll turn our big united table into a table dataframe for dplyr, removing the old frame

united <- tbl_df(unitedset)
rm(unitedset)

# Objective #2: "Extracts only the measurements on the mean and standard deviation for each measurement."
# I am choosing to interpret this awkward wording in the assignment as direction to select from united 
# only those variable columns whose column names include "mean" or "std". Of Course, we still want to keep
# our first two columns, Activity and Subject. 

# I assign a logical vector of TRUE/FALSE to represent each column in the table dataframe united, depending 
# on whether its column name wholly contains the words "Activity" or "Subject", or partially contains 
# "mean", or "std", using the R base command grepl

DesiredColumns <- grepl("Activity|Subject|mean\\(\\)|std\\(\\)", colnames(united))

# Then I use this logical vector as the basis of selection. This creates a reduction of united
# down to 68 columns, and I can remove the old dataframe.

united_reduced <- united[,DesiredColumns]
rm(united)

# Objective 3: "Uses descriptive activity names to name the activities in the data set"
# As I previously mentioned, the numbers in the "Activity" column, that originally came from 
# raw data files ytrain and ytest, correspond to the the labels in the activitylabels file.

united_reduced_labeled <- merge(activitylabels,united_reduced,by.x="V1",by.y="Activity")
rm(united_reduced)

# Note please that this resulted in a re-ordering by activity.
# Also the 2nd and 3rd columns get relabeled "V2" and "V1", so that has to be fixed in the next step.

# Objective 5: creates a second, independent tidy data set with the average of each variable for 
# each activity and each subject. 

tidydata <- ddply(united_reduced_labeled, .(Subject, V2), numcolwise(mean))
tidydata <- tidydata[,-3]
names(tidydata)[2]<-"Activity"

# Finally, I output the tidy dataset as txt
write.table(tidydata,"tidydata.txt",row.names=FALSE)
