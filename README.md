### Introduction

The script run_analysis.R carries out below steps per required in excercise.

Read zip file from URL provided and znzip the same in working directory
Read metadata from ActivityLabels and Features.
The columns with the mean and standard deviation measures are taken from the whole dataset. After extracting these columns, they are given the correct names, taken from features.txt.
As activity data is addressed with values 1:6, we take the activity names and IDs from activity_labels.txt and they are substituted in the dataset.
In the last steup, new dataset with all the average measures for each subject and activity type (30 subjects * 6 activities = 180 rows). The output file is called averages_data.txt, and uploaded to this repository.

### Grading

This assignment will be graded via peer assessment.
