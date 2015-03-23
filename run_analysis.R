if(!file.exists("data")){
	dir.create("data")
}
activity_l_Data <- read.table("./data/activity_labels.txt")
features_Data <- read.table("./data/features.txt")
subject_test_Data <- read.table("./data/test/subject_test.txt")
X_test_Data <- read.table("./data/test/X_test.txt")
y_test_Data <- read.table("./data/test/y_test.txt")
subject_train_Data <- read.table("./data/train/subject_train.txt")
X_train_Data <- read.table("./data/train/X_train.txt")
y_train_Data <- read.table("./data/train/y_train.txt")
A <- cbind(y_test_Data,subject_test_Data)
colnames(A)[1]<-'Activity'
colnames(A)[2]<-'Subject'

B <- cbind(y_train_Data,subject_train_Data)
colnames(B)[1]<-'Activity'
colnames(B)[2]<-'Subject'

C<-merge(A,B,all=TRUE)

D<-merge(X_train_Data,X_test_Data,all=TRUE)
