dataset <- read.csv('Social_Network_Ads.csv')
View(dataset)
dataset = dataset[,3:5]

##Splitting the data to train and test the dataset
library(caTools)
set.seed(123)
split <- sample.split(dataset$Purchased,SplitRatio = 0.75)
training_set = subset(dataset,split==TRUE)
test_set = subset(dataset,split==FALSE)

#feature scaling

training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
library(e1071)
classifer = svm(formula = Purchased ~.,
                 data = training_set,
                 type = 'C-classification',
                 kernal = 'radial')
y_pred = predict(classifer,newdata = test_set[-3])
y_pred
cm = table(test_set[,3],y_pred)
cm


