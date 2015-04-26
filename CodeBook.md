## CodeBook.md
# Purpose: To describe the variables in final.txt

(For information on scripts please view README.txt)

# [1] subject_id: subject's id who performed the activity for each window sample. 
      Data Type: Int
      Min: 1 
      Max: 30
      Range: 1~30

# [2] activity: activity performed by subject
      Data Type: Factor
      Range: WALKING
             WALKING_UPSTAIRS
             WALKING_DOWNSTAIRS
             SITTING
             STANDING
             LAYING

# [3] tBodyAcc_mean_X: the mean of acceleration signal in the X axis
      Data Type: Num
      Min.   :0.2216
      Max.   :0.3015

# [4] tBodyAcc_mean_Y: the mean of acceleration signal in the Y axis
      Data Type: Num
      Min.   :-0.040514
      Max.   :-0.001308
 
# [5] tBodyAcc_mean_Z: the mean of acceleration signal in the Z axis
      Data Type: Num
      Min.   :-0.15105
      Max.   :-0.08683

# [6] tBodyAcc_std_X: the standard deivation of acceleration signal in the X axis
      Data Type: Num
      Min.   :-0.9961
      Max.   :0.6269

# [7] tBodyAcc_std_Y: the standard deivation of acceleration signal in the Y axis
      Data Type: Num
      Min.   :-0.99024
      Max.   :0.51482
 
# [8] tBodyAcc_std_Z: the standard deivation of acceleration signal in the Z axis
      Data Type: Num
      Min.   :-0.9873
      Max.   :0.6090

# [9] tGravityAcc_mean_X: the mean of gravity acceleration signal in the X axis
      Data Type: Num
      Min.   :-0.6800
      Max.   :0.9745

# [10] tGravityAcc_mean_Y: the mean of gravity acceleration signal in the Y axis
      Data Type: Num
      Min.   :-0.43231
      Max.   :0.95659

# [11] tGravityAcc_mean_Z: the mean of gravity acceleration signal in the Z axis
      Data Type: Num
      Min.   :-0.49509
      Max.   :0.91878
   
# [12] tGravityAcc_std_X: the standard deviation of gravity acceleration signal in the X axis
      Data Type: Num
      Min.   :-0.9968
      Max.   :-0.8296

# [13] tGravityAcc_std_Y: the standard deviation of gravity acceleration signal in the Y axis
      Data Type: Num
      Min.   :-0.9942
      Max.   :-0.6436

# [14] tGravityAcc_std_Z: the standard deviation of gravity acceleration signal in the Z axis
      Data Type: Num
      Min.   :-0.9894
      Max.   :-0.6102

# [15] tBodyAccJerk_mean_X: the mean of body linear acceleration derived in time to obtain Jerk signals in the X axis
      Data Type: Num
      Min.   :-0.04269
      Max.   :0.11894

# [16] tBodyAccJerk_mean_Y: the mean of body linear acceleration derived in time to obtain Jerk signals in the Y axis
      Data Type: Num
      Min.   :-0.0386872
      Max.   :0.0568186

# [17] tBodyAccJerk_mean_Z: the mean of body linear acceleration derived in time to obtain Jerk signals in the Z axis
      Data Type: Num
      Min.   :-0.067458
      Max.   :0.038053

# [18] tBodyAccJerk_std_X: the standard deviation of body linear acceleration derived in time to obtain Jerk signals in the X axis
      Data Type: Num
      Min.   :-0.9946
      Max.   :0.5443

# [19] tBodyAccJerk_std_Y: the standard deviation of body linear acceleration derived in time to obtain Jerk signals in the Y axis
      Data Type: Num
      Min.   :-0.9895
      Max.   :0.3553

# [20] tBodyAccJerk_std_Z: the standard deviation of body linear acceleration derived in time to obtain Jerk signals in the Z axis
      Data Type: Num
      Min.   :-0.99329
      Max.   :0.03102

# [21] tBodyGyro_mean_X: the mean of angular velocity in the X axis
      Data Type: Num
      Min.   :-0.20578
      Max.   :0.19270

# [22] tBodyGyro_mean_Y: the mean of angular velocity in the Y axis
      Data Type: Num
      Min.   :-0.20421
      Max.   :0.02747

# [23] tBodyGyro_mean_Z: the mean of angular velocity in the Z axis
      Data Type: Num
      Min.   :-0.07245
      Max.   :0.17910

# [24] tBodyGyro_std_X: the standard deviation of angular velocity in the X axis
      Data Type: Num
      Min.   :-0.9943
      Max.   :0.2677

# [25] tBodyGyro_std_Y: the standard deviation of angular velocity in the Y axis
      Data Type: Num
      Min.   :-0.9942
      Max.   :0.4765

# [26] tBodyGyro_std_Z: the standard deviation of angular velocity in the Z axis
      Data Type: Num
      Min.   :-0.9855
      Max.   :0.5649
        
# [27] tBodyGyroJerk_mean_X: the mean of angular velocity derived in time to obtain Jerk signals in the X axis
      Data Type: Num
      Min.   :-0.15545
      Max.   :0.02209

# [28] tBodyGyroJerk_mean_Y: the mean of angular velocity derived in time to obtain Jerk signals in the Y axis
      Data Type: Num
      Min.   :-0.07681
      Max.   :-0.01320

# [29] tBodyGyroJerk_mean_Z: the mean of angular velocity derived in time to obtain Jerk signals in the Z axis
      Data Type: Num
      Min.   :-0.092500
      Max.   :-0.006941

# [30] tBodyGyroJerk_std_X: the standard deviation of angular velocity derived in time to obtain Jerk signals in the X axis
      Data Type: Num
      Min.   :-0.9965
      Max.   :0.1791

# [31] tBodyGyroJerk_std_Y: the standard deviation of angular velocity derived in time to obtain Jerk signals in the Y axis
      Data Type: Num
      Min.   :-0.9971
      Max.   :0.2959

# [32] tBodyGyroJerk_std_Z: the standard deviation of angular velocity derived in time to obtain Jerk signals in the Z axis
      Data Type: Num
      Min.   :-0.9954
      Max.   :0.1932

# [33] tBodyAccMag_mean: the mean of the magnitude of accleration signals calculated using the Euclidean norm in the XYZ axis
      Data Type: Num
      Min.   :-0.98649
      Max.   :0.64460

# [34] tBodyAccMag_std: the standard deviation of the magnitude of accleration signals calculated using the Euclidean norm in the XYZ axis
      Data Type: Num
      Min.   :-0.9819
      Max.   :0.4284

# [35] tGravityAccMag_mean: the mean of the magnitude of gravity accleration signals calculated using the Euclidean norm in the XYZ axis
      Data Type: Num
      Min.   :-0.98649
      Max.   :0.64460

# [36] tGravityAccMag_std:  the standard deviation of the magnitude of gravity accleration signals calculated using the Euclidean norm in the XYZ axis
      Data Type: Num
      Min.   :-0.9819
      Max.   :0.4284

# [37] tBodyAccJerkMag_mean: the mean of body linear acceleration derived in time to obtain Jerk signals calculated using the Euclidean norm in the XYZ axis
      Data Type: Num
      Min.   :-0.9928
      Max.   :0.4345

# [38] tBodyAccJerkMag_std: the standard deviation of body linear acceleration derived in time to obtain Jerk signals calculated using the Euclidean norm in the XYZ axis
      Data Type: Num
      Min.   :-0.9946
      Max.   :0.4506

# [39] tBodyGyroMag_mean: the mean of angular velocity calculated using the Euclidean norm in the XYZ axis 
      Data Type: Num
      Min.   :-0.9807
      Max.   :0.4180

# [40] tBodyGyroMag_std: the standard deviation of angular velocity calculated using the Euclidean norm in the XYZ axis      
      Data Type: Num
      Min.   :-0.9787
      Max.   :0.3000

# [41] tBodyGyroJerkMag_mean: the mean of angular velocity derived in time to obtain Jerk signals calculated using the Euclidean norm in the XYZ axis   
      Data Type: Num
      Min.   :-0.99732
      Max.   :0.08758

# [42] tBodyGyroJerkMag_std: the standard deviation of angular velocity derived in time to obtain Jerk signals calculated using the Euclidean norm in the XYZ axis
      Data Type: Num
      Min.   :-0.9977
      Max.   :0.2502

============================================================================================================

# [43] fBodyAcc_mean_X: the mean of acceleration signal in the X axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9952
      Max.   :0.5370

# [44] fBodyAcc_mean_Y: the mean of acceleration signal in the Y axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.98903
      Max.   :0.49446
 
# [45] fBodyAcc_mean_Z: the mean of acceleration signal in the Z axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9895
      Max.   :0.2807

# [46] fBodyAcc_std_X: the standard deivation of acceleration signal in the X axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9966
      Max.   :0.6585
      
# [47] fBodyAcc_std_Y: the standard deivation of acceleration signal in the Y axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.99068
      Max.   :0.42793
      
# [48] fBodyAcc_std_Z: the standard deivation of acceleration signal in the Z axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9866
      Max.   :0.6871

# [49] fBodyAccJerk_mean_X: the mean of body linear acceleration derived in time to obtain Jerk signals in the X axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9946
      Max.   :0.4743

# [50] fBodyAccJerk_mean_Y: the mean of body linear acceleration derived in time to obtain Jerk signals in the Y axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9894
      Max.   :0.2767

# [51] fBodyAccJerk_mean_Z: the mean of body linear acceleration derived in time to obtain Jerk signals in the Z axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9920 
      Max.   :0.1578

# [52] fBodyAccJerk_std_X: the standard deviation of body linear acceleration derived in time to obtain Jerk signals in the X axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9951
      Max.   :0.4768

# [53] fBodyAccJerk_std_Y: the standard deviation of body linear acceleration derived in time to obtain Jerk signals in the Y axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9905
      Max.   :0.3498

# [54] fBodyAccJerk_std_Z: the standard deviation of body linear acceleration derived in time to obtain Jerk signals in the Z axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.993108
      Max.   :-0.006236

# [55] fBodyGyro_mean_X: the mean of angular velocity in the X axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9931
      Max.   :0.4750

# [56] fBodyGyro_mean_Y: the mean of angular velocity in the Y axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9940
      Max.   :0.3288

# [57] fBodyGyro_mean_Z: the mean of angular velocity in the Z axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9860
      Max.   :0.4924

# [58] fBodyGyro_std_X: the standard deviation of angular velocity in the X axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9947
      Max.   :0.1966

# [59] fBodyGyro_std_Y: the standard deviation of angular velocity in the Y axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9944
      Max.   :0.6462

# [60] fBodyGyro_std_Z: the standard deviation of angular velocity in the Z axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9867
      Max.   :0.5225
        
# [61] fBodyAccMag_mean: the mean of the magnitude of accleration signals calculated using the Euclidean norm in the XYZ axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.0.9868
      Max.   :0.5866

# [62] fBodyAccMag_std: the standard deviation of the magnitude of accleration signals calculated using the Euclidean norm in the XYZ axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9823
      Max.   :0.1787

# [63] fBodyAccJerkMag_mean: the mean of body linear acceleration derived in time to obtain Jerk signals calculated using the Euclidean norm in the XYZ axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9940
      Max.   :0.5384

# [64] fBodyAccJerkMag_std: the standard deviation of body linear acceleration derived in time to obtain Jerk signals calculated using the Euclidean norm in the XYZ axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9944
      Max.   :0.3163

# [65] fBodyGyroMag_mean: the mean of angular velocity calculated using the Euclidean norm in the XYZ axis  after applying Fast Fourier Transform (FFT)    
      Data Type: Num
      Min.   :-0.9846
      Max.   :0.2040

# [66] fBodyGyroMag_mean: the standard deviation of angular velocity calculated using the Euclidean norm in the XYZ axis after applying Fast Fourier Transform (FFT)    
      Data Type: Num
      Min.   :-0.9785
      Max.   :0.2367

# [67] fBodyGyroJerkMag_mean: the mean of angular velocity derived in time to obtain Jerk signals calculated using the Euclidean norm in the XYZ axis after applying Fast Fourier Transform (FFT) 
      Data Type: Num
      Min.   :-0.9976
      Max.   :0.1466

# [68] fBodyGyroJerkMag_mean: the standard deviation of angular velocity derived in time to obtain Jerk signals calculated using the Euclidean norm in the XYZ axis after applying Fast Fourier Transform (FFT)
      Data Type: Num
      Min.   :-0.9976
      Max.   :0.2878
