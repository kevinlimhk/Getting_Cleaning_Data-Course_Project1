# README.md - run_analysis.R
## Purpose: To explain on how to use run_analysis.R and embedded codes.
==========================================================================================================
Introduction 
==========================================================================================================
The purpose of this project is to demostrate the ability to collect, work with, and clean a data set. run_analysis.R is a function that is used to convert a series of text files obtained from UCI Machine Learning Repository, specifically on the data set "UCI HAR Dataset", to a tidy data set based on the requirements stated for Course Project 1 in the Coursera Course (Getting and Cleaning Data).

Requirements for the course project can be found in the link as follows:
https://github.com/kevinlimhk/Getting_Cleaning_Data-Course_Project1/blob/master/ProjectRequirements.md

==========================================================================================================
Function Defination 
==========================================================================================================
run_analysis.R(directory)

Input parameter 
Directory - Directory of data folder and text files.

Ouput
A text file final.txt will be created in RStudio workspace which contains tidy data set with the average of each variable for each activity and each subject.

==========================================================================================================
Execution Steps
==========================================================================================================
1) Download the file from link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2) Unzip it and place the main folder "UCI HAR Dataset" in R Studio User Workspace.
3) Descriptions of files are as follows:
    - README.txt -> Main text file describing the data and included text files
    - features_info.txt -> Shows information about the variables used on the feature vector.
    - features.txt -> List of all features.
    - activity_labels.txt -> Links the class labels with their activity name.
    - train/X_train.txt -> Training set.
    - train/y_train.txt -> Training labels. 
    - test/X_test.txt -> Test set.
    - test/y_test.txt -> Test labels.
    - train/subject_train.txt -> Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
    (We will be ignoring text files in 'train/Inertial Signals' and 'test/Inertial Signals' folders as they are not required in the course assignment)
4) Make sure run_analysis.R is in the workspace. Run function run_anaylsis.R via RStudio
    - Source("run_analysis.R")
    - run_analysis(directory)
    (directory =  folder where "UCI HAR Dataset" located. leave it blank if "UCI HAR Dataset" is in workspace)


==========================================================================================================
= SCRIPT CODE BREAKDOWN                                                                                  = 
==========================================================================================================

====================================
(0) Reading in data from text files 
====================================
0.1) Read in features.info.txt using read.table()
    - Set the column headings to "feature_id" and "feature_title"
    - 2 data frames are used
      - feats -> to store the original variable names for filtering purpose in (2.1)
      - features -> to store refined variable names to be used as headings for the finalized dataset
        - Replace "-" with "_" and "()" with "" (Empty Character) for the feature_title column
        (This is because "-", "(", ")" cannot be used in column headers)
0.2) Read in activity_labels.txt using read.table()
    - Set the column headings to "acitivity_id" and "activity"
0.3) Read in subject_test.txt, X_test.txt, Y_test.txt 
    - For subject_test.txt, set column headings to "subject_id"
    - For X_test.txt, set column headings to the extracted feature titles from (0.1)
    - For Y_test.txt, set column headings to "activity_id"
0.4) Simliar to (0.3), Read in subject_train.txt, X_train.txt, Y_train.txt 
    
=================================================================
(1) Merges the training and the test sets to create one data set.
=================================================================
1.1) Combine and merge the extracted data in (0.3) & (0.4) to form test and train datasets using cbind()
    - Each row of observations corresponds for all txt files
1.2) Combine and merge test and train datasets to form the main dataset using rbind()
    - Both test and train datasets have the same amount of variables and are arranged in the same format.
1.3) Clear initialized objects to free up memory using rm()
    
===========================================================================================
(2) Extracts only the measurements on the mean and standard deviation for each measurement.
===========================================================================================
2.1) Extract features with title containing "mean()" and "std()" string as these are the measurements that are required by the project. 
2.2) The Main dataset created in (1.3) is simplyified to containing only the required features.

============================================================================
(3) Uses descriptive activity names to name the activities in the data set.
============================================================================
3.1) The activity_id column in the main dataset is replaced with acitivity label.
    - Join() is used. Left join is done with the main dataset and the activity_labels extracted in (0.2)
    - Activity_id column is removed from the main dataset.
    
============================================================================
(4) Appropriately labels the data set with descriptive variable names.
============================================================================
4.1) Variables have been given descriptive names in "(0) Reading in data from text files" section
4.2) Clear initialized objects to free up memory using rm()

===========================================================================================================
(5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
===========================================================================================================
5.1) Using ddply(), aggregate the main dataset by finding the mean/average of each variable for each activity and each subject.
5.2) Arrange the observations in the main dataset in the order of subject_id and followed by activity
5.3) Write the final main dataset to a text file, "final.txt", in the RStudio workspace. "final.txt" will be created.
