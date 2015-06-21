
actlab <- read.table("./UCI HAR Dataset/activity_labels.txt",  
                      colClasses=c("NULL","character")) 

features <- read.table("./UCI HAR Dataset/features.txt", sep=" ",  
                       as.is=T, 
                        colClasses=c("NULL","character"), 
                        col.names=c("NULL","feature")) 
features$feature <- make.names(features$feature) 


stest <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                    col.names = "subject") 
ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt", 
                     col.names = "activity") 
atest <- lapply(ytest,function(x)actlab[x,1]) 
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt") 
names(xtest) <- features$feature 
ctest <- xtest[,sort(c(grep("mean",features$feature), 
                       grep("std",features$feature)))] 
test <- cbind(stest,atest,ctest) 

strain <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                    col.names = "subject") 
ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt", 
                  col.names = "activity") 
atrain <- lapply(ytrain,function(x)actlab[x,1]) 
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt") 
names(xtrain) <- features$feature 
ctrain <- xtrain[,sort(c(grep("mean",features$feature), 
                        grep("std",features$feature)))] 
train <- cbind(strain,atrain,ctrain) 

 
library(dplyr) 

tidy <- tbl_df(rbind(train,test)) %>% 
       group_by(subject,activity)%>% 
         summarise_each(funs(mean)) 
 
 
