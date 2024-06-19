dataset <- read.csv('heart.csv')
dataset$target = factor(dataset$target, levels = c(0,1))

library(caTools)
set.seed(123)
split = sample.split(dataset,SplitRatio =0.75)
training_set = subset(dataset,split == TRUE)
test_set = subset(dataset, split ==FALSE)


classifer = svm(formula = target~.,
                 data = training_set,
                 type = 'C-classification',
                 kernal ='liner')
y_pred = predict(classifer, newdata = test_set[-14])
cm= table(test_set[,14],y_pred)
cm
