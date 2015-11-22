#Please be sure your working directory includes UCI HAR Dataset.

#Reading data into R.

#Train
Subject_Train<-read.table("UCI HAR Dataset/train/subject_train.txt")
X_Train<-read.table("UCI HAR Dataset/train/X_train.txt")
Y_Train<-read.table("UCI HAR Dataset/train/Y_train.txt")
#Test
Subject_Test<-read.table("UCI HAR Dataset/test/subject_test.txt")
X_Test<-read.table("UCI HAR Dataset/test/X_test.txt")
Y_Test<-read.table("UCI HAR Dataset/test/Y_test.txt")

#Changing column names.
Features<-read.table("UCI HAR Dataset/features.txt")
names(X_Train)<-Features$V2
names(X_Test)<-Features$V2
names(Y_Train)<-"Activity"
names(Y_Test)<-"Activity"
names(Subject_Train)<-"Subject"
names(Subject_Test)<-"Subject"

#Merging train and test data
Train_Data<-cbind(Subject_Train,Y_Train,X_Train)
Test_Data<-cbind(Subject_Test,Y_Test,X_Test)
Data<-rbind(Train_Data,Test_Data)

#Take columns with mean and standart deviation
Req_Fields<-grep("mean\\(\\)|std\\(\\)",Features$V2)
Data2<-Data[,c(1,2,Req_Fields+2)]

#Rename activity numbers to activity names
Activity_Labels<-read.table("UCI HAR Dataset/activity_labels.txt")
Data2$Activity<-as.character(Data2$Activity)
for(i in 1:6){
        
        Data2$Activity[Data2$Activity==i]<-as.character(Activity_Labels[i,2])
}

#Make column names more descriptive

names(Data2) <- gsub("^t","Time ",names(Data2))
names(Data2) <- gsub("^f","Frequency ",names(Data2))
names(Data2) <- gsub("Acc","Accelerometer ",names(Data2))
names(Data2) <- gsub("Gyro","Gyroscope ",names(Data2))
names(Data2) <- gsub("BodyBody","Body",names(Data2))
names(Data2) <- gsub("Body","Body ",names(Data2))
names(Data2) <- gsub("Gravity","Gravity ",names(Data2))
names(Data2) <- gsub("Mag","Magnitude ",names(Data2))
names(Data2) <- gsub("Jerk","Jerk ",names(Data2))
names(Data2) <- gsub("-mean()","Mean ",names(Data2))
names(Data2) <- gsub("-std()","Standard Deviation ",names(Data2))
names(Data2) <- gsub("-", "" , names(Data2))
#Remove paranthesis in column names
names(Data2) <- gsub('\\(|\\)',"",names(Data2), perl = TRUE) 

#Create and write tidy dataset
Data3<-aggregate(.~Subject+Activity,Data2,mean)
write.table(Data3,file="TidyData.txt",row.names=FALSE)