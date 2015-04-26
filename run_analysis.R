run_analysis <- function(directory="") {
 
    library(plyr)
    
    ###### (0) Read in the files ######
    
    # Read in features.info and activity labels
    feats <- read.table(paste(directory,"UCI HAR Dataset","/features.txt", sep=""), sep=" ", col.names=c("feature_id","feature_title"))
    features <- feats
    features$feature_title <- gsub("-","_",features$feature_title)
    features$feature_title <- gsub("\\(\\)","",features$feature_title)
    activity_label <- read.table(paste(directory,"UCI HAR Dataset","/activity_labels.txt", sep=""), sep=" ", col.names=c("activity_id","activity"))
    
    # Read in test data
    subject_test <- read.table(paste(directory,"UCI HAR Dataset","/test/subject_test.txt", sep=""), col.names="subject_id")
    # Using data frame features for table headers
    x_test <- read.table(paste(directory,"UCI HAR Dataset","/test/X_test.txt", sep=""),col.names=features$feature_title)
    y_test <- read.table(paste(directory,"UCI HAR Dataset","/test/Y_test.txt", sep=""), col.names="activity_id")
    
    # Read in train data
    subject_train <- read.table(paste(directory,"UCI HAR Dataset","/train/subject_train.txt", sep=""), col.names="subject_id")
    # Using data frame features for table headers
    x_train <- read.table(paste(directory,"UCI HAR Dataset","/train/X_train.txt", sep=""),col.names=features$feature_title)
    y_train <- read.table(paste(directory,"UCI HAR Dataset","/train/Y_train.txt", sep=""), col.names="activity_id")
    
    ###### (1) Merges the training and the test sets to create one data set. ######
    
    # Column Bind
    test_dataset <- cbind(subject_test,x_test,y_test)
    train_dataset <- cbind(subject_train,x_train,y_train)
    
    # Final Dataset by row binding train and test data sets
    final_dataset <- rbind(train_dataset,test_dataset)
    
    # Clear objects to free up memory 
    rm(test_dataset,train_dataset,subject_test,x_test,y_test,subject_train,x_train,y_train)
    
    ###### (2) Extracts only the measurements on the mean and standard deviation for each measurement. ######
    
    # grep mean() and std() measurements
    # using data frame feats to filter the measurements
    extracted_feats <- feats[grepl("mean()",feats$feature_title,fixed=TRUE) | grepl("std()",feats$feature_title,fixed=TRUE),]
    extracted_dataset <- final_dataset[,c(1,extracted_feats$feature_id+1,563)]
    
    ###### (3) Uses descriptive activity names to name the activities in the data set. ###### 
    
    # Merge activity label to respective id in extracted dataset
    extracted_dataset <- join(extracted_dataset,activity_label)
    extracted_dataset <- extracted_dataset[,c(1:67,69)]
    
    ###### (4) Appropriately labels the data set with descriptive variable names. ######
    # Variables have been given descriptive names in "(0) Reading in data from text files" section
    # Free up objects in memory
    rm(activity_label,extracted_feats,features,final_dataset, feats)
    
    ###### (5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. ######
    final <- ddply(extracted_dataset,.(subject_id,activity),numcolwise(mean))
    final <- arrange(final,subject_id,activity)
    
    ### Random Check
    ### mean(extracted_dataset[extracted_dataset$subject_id==2 & extracted_dataset$activity %in% "LAYING" ,2])

    # Write final table to file
    write.table(final,file="final.txt",row.name=FALSE)
}
