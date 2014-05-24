# the following does not asumme the presence of the required data
library(plyr)
# check the file, if not present download and unzip
filename <- "getdata-projectfiles-UCI HAR Dataset.zip"
if(!file.exists("./data")){dir.create("./data")}
if(!file.exists(filename)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl,destfile = filename)
}
unzip(filename, exdir = "./data")

# read train and test datasets
trn <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
tst <- read.table("./data/UCI HAR Dataset/test/X_test.txt")

# read feature file and get index of mean and std features
# do not include derived features
labfeat <- read.table("./data/UCI HAR Dataset/features.txt")
ix <- grepl("([Mm]ean|[Ss]td)",labfeat[,2])
ixn<- grepl("([Aa]ngle|[Jj]erk|[Mm]ag|^f)",labfeat[,2])
ix <- (ix&!ixn)

# subset to use only selected features
trn <- trn[,ix]
tst <- tst[,ix]

# read the activity names
actlbl <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
# read datasets activities
acttr <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
actts <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
# join the names
acttr <- join(acttr,actlbl,"V1")
actts <- join(actts,actlbl,"V1")
labels <- rbind(acttr, actts)
names(labels) <- c("activityid","activity")

# read the subjects
subtr <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
subts <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
subjects <- rbind(subtr,subts)
names(subjects) <- "subject"
# merge the two datasets
data <- merge(trn, tst, all=TRUE)
# name the features
names(data) <- tolower(gsub("[(),-]","",labfeat[ix,2]))

# merging: subject + labels + data
data <- cbind(subjects,labels,data)

# create the second dataset
library(reshape)
sdata <- melt(data, id.vars = c("subject", "activityid","activity"))
data2 <- cast(subject + activityid + activity ~ variable, data = sdata, fun = mean)

# final cleaning
rm(subjects,labels,trn,tst,subtr,subts,labfeat,ix,ixn,acttr,actts,actlbl,sdata)

# save file
write.table(file="ucihardataset1.txt",x=data)
write.table(file="ucihardataset2.txt",x=data2)