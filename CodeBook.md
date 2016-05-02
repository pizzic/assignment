##Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

There are two additional columns to indicate the subject number for each observation and the activity that the subject was performing at the time of the observation:

* activity (walking, walking upstairs, walking downstairs, sitting, standing, laying)
* subject- identifier of the subject that carried out the experiment (from 1 to 30)

The complete list of variables of each feature vector in data.csv is (datamean.csv contains the same variables but the values are the averages for each subject by activity type):

1. tbodyaccmeanx
2. tbodyaccmeany
3. tbodyaccmeanz
4. tbodyaccstdx
5. tbodyaccstdy
6. tbodyaccstdz
7. tgravityaccmeanx
8. tgravityaccmeany
9. tgravityaccmeanz
10. tgravityaccstdx
11. tgravityaccstdy
12. tgravityaccstdz
13. tbodyaccjerkmeanx
14. tbodyaccjerkmeany
15. tbodyaccjerkmeanz
16. tbodyaccjerkstdx
17. tbodyaccjerkstdy
18. tbodyaccjerkstdz
19. tbodygyromeanx
20. tbodygyromeany
21. tbodygyromeanz
22. tbodygyrostdx
23. tbodygyrostdy
24. tbodygyrostdz
25. tbodygyrojerkmeanx
26. tbodygyrojerkmeany
27. tbodygyrojerkmeanz
28. tbodygyrojerkstdx
29. tbodygyrojerkstdy
30. tbodygyrojerkstdz
31. tbodyaccmagmean
32. tbodyaccmagstd
33. tgravityaccmagmean
34. tgravityaccmagstd
35. tbodyaccjerkmagmean
36. tbodyaccjerkmagstd
37. tbodygyromagmean
38. tbodygyromagstd
39. tbodygyrojerkmagmean
40. tbodygyrojerkmagstd
41. fbodyaccmeanx
42. fbodyaccmeany
43. fbodyaccmeanz
44. fbodyaccstdx
45. fbodyaccstdy
46. fbodyaccstdz
47. fbodyaccjerkmeanx
48. fbodyaccjerkmeany
49. fbodyaccjerkmeanz
50. fbodyaccjerkstdx
51. fbodyaccjerkstdy
52. fbodyaccjerkstdz
53. fbodygyromeanx
54. fbodygyromeany
55. fbodygyromeanz
56. fbodygyrostdx
57. fbodygyrostdy
58. fbodygyrostdz
59. fbodyaccmagmean
60. fbodyaccmagstd
61. fbodybodyaccjerkmagmean
62. fbodybodyaccjerkmagstd
63. fbodybodygyromagmean
64. fbodybodygyromagstd
65. fbodybodygyrojerkmagmean
66. fbodybodygyrojerkmagstd
67. activity
68. subject

###Transformations
To produce the data set in data.csv, the following steps were performed:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Assign descriptive activity names to name the activities in the data set
4. Label the data set with descriptive variable names.
5. Write the resulting data to data.csv.
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Write the resulting data to datamean.csv.

