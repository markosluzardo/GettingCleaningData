Data Dictionary
===================

The file `ucihardataset1.txt` is produced after the following operations:

- Merged train and test data into a single file
- Included subjects and activity as variables
- Removed derived variables, keeping only mean and standard deviation features
- Renamed variable descriptions by lowercasing the original names and removing characters such as parenthesis, dashes, and comas

There are 10299 records and 21 variables covering accelerometer (which has gravitational and body motion components) and gyroscope data in a triaxial (X-Y-Z) configuration.

| Variable   | Description                                                    | Value Range        |
|------------|----------------------------------------------------------------|--------------------|
| subject    | One of each 30 volunteers within an age bracket of 19-48 years | [1, 30]               |
| activityid | Code of the activity performed                                 | [1, 6]                |
| activity   | Description of the activity performed                          | WALKING<BR>WALKING_UPSTAIRS<BR>WALKING_DOWNSTAIRS<BR>SITTING<BR>STANDING<BR>LAYING             |
| tbodyaccmeanx    | Mean of time domain signal from the body accelerometer X axis in standard gravity units 'g'.                  | [-1, 1]            |
| tbodyaccmeany    | Mean of time domain signal from the body accelerometer Y axis in standard gravity units 'g'.                  | [-1, 1]            |
| tbodyaccmeanz    | Mean of time domain signal from the body accelerometer Z axis in standard gravity units 'g'.                  | [-1, 1]            |
| tbodyaccstdx     | Standard deviation of time domain signal from the body accelerometer X axis in standard gravity units 'g'.    | [-1, 1]            |
| tbodyaccstdy     | Standard deviation of time domain signal from the body accelerometer Y axis in standard gravity units 'g'.    | [-1, 1]            |
| tbodyaccstdz     | Standard deviation of time domain signal from the body accelerometer Z axis in standard gravity units 'g'.    | [-1, 1]            |
| tgravityaccmeanx | Mean of time domain signal from the gravity accelerometer X axis in standard gravity units 'g'.               | [-1, 1]            |
| tgravityaccmeany | Mean of time domain signal from the gravity accelerometer Y axis in standard gravity units 'g'.               | [-1, 1]            |
| tgravityaccmeanz | Mean of time domain signal from the gravity accelerometer Z axis in standard gravity units 'g'.               | [-1, 1]            |
| tgravityaccstdx  | Standard deviation of time domain signal from the gravity accelerometer X axis in standard gravity units 'g'. | [-1, 1]            |
| tgravityaccstdy  | Standard deviation of time domain signal from the gravity accelerometer Y axis in standard gravity units 'g'. | [-1, 1]            |
| tgravityaccstdz  | Standard deviation of time domain signal from the gravity accelerometer Z axis in standard gravity units 'g'. | [-1, 1]            |
| tbodygyromeanx   | Mean of time domain signal from the gyroscope X axis in standard gravity units 'g'.                           | [-1, 1]            |
| tbodygyromeany   | Mean of time domain signal from the gyroscope Y axis in standard gravity units 'g'.                           | [-1, 1]            |
| tbodygyromeanz   | Mean of time domain signal from the gyroscope Z axis in standard gravity units 'g'.                           | [-1, 1]            |
| tbodygyrostdx    | Standard deviation of time domain signal from the gyroscope X axis in standard gravity units 'g'.             | [-1, 1]            |
| tbodygyrostdy    | Standard deviation of time domain signal from the gyroscope Y axis in standard gravity units 'g'.             | [-1, 1]            |
| tbodygyrostdz    | Standard deviation of time domain signal from the gyroscope Z axis in standard gravity units 'g'.             | [-1, 1]            |