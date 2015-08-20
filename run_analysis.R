library(dplyr)
library(data.table)
#wdir<-"C:/COURSERA/Getting&Cleaning/project"  #Specify your working directory where all data is
#setwd(wdir) # set the working directory where the data files are
allframe_train<-data.frame() #create an empty data frame for later storing training data
allframe_test<-data.frame() #create an empty empty data frame for test data
allframe<-data.frame()#create an empty dataframe which will combine/merge the training and test data

#Read training data
data_train<-read.table("X_train.txt") #read training data with activities
train_labels<-read.table("y_train.txt") #read the activity labels data 
train_subject<-read.table("subject_train.txt")#read subject/person which this data refer

#First rename the variable capturing activity and subject_person to be meaningful and easy to read
train_labels <- rename(train_labels,activity=V1)
train_subject<-rename(train_subject,person=V1)
#Then bind data together to create one data frame for training data
allframe_train<-cbind(data_train,train_labels,train_subject) 

#Now read test data
data_test<-read.table("X_test.txt") #read test data
test_labels<-read.table("y_test.txt") #read the activity labels
test_subject<-read.table("subject_test.txt")#read subject/person which this data refer

#First rename the variable capturing activity and then create one data frame for test data
test_labels <- rename(test_labels,activity=V1)
test_subject<-rename(test_subject,person=V1)
allframe_test<-cbind(data_test,test_labels,test_subject) 

# Now bind the training and test data
allframe<-rbind(allframe_train,allframe_test)

#now read all names for activities (coded 1 to 6 in data set)
activity_names<-read.table("activity_labels.txt") #read activity labels
#head(activity_names)

#Merge the activity names with the activities in the allframe (with all data)
merged1<-merge(allframe,activity_names,by.x="activity",by.y="V1",all=FALSE)
names(merged1)


#Fix some issues created with names of variables and clean data from non-necessary (dublicated) variables
merged1<-rename(merged1,activityx=activity)
merged1<-rename(merged1,activity=V2.y)
merged1<-rename(merged1,V2=V2.x)
merged1<-select(merged1,-(activityx))

#names(merged1)
#merged1[,"activity"]

#read all features names
features_names<-read.table("features.txt") #read features (the name of variables) labels
new1=as.character(features_names[,2]) #put names in a vector as character
old1=names(merged1[,1:561]) #read old names of variables

#names(merged1)

names(merged1)[1:561]<-new1 #change the names according to features

#setnames(select(merged1,, old=old1 , new=new1) #use names of variables that are meaningfull
merged2 <- merged1[, !duplicated(colnames(merged1), fromLast = T)] #remove dubplicated columns

index1<-grep("mean()|std()|person|activity",names(merged2)) #find the index of columns of names of the data frame including these strings

merged3<-select(merged2,index1) #select the variables based on index above


write.table(merged3,"tidy_data.txt",row.names=FALSE) #write data into a txt file


