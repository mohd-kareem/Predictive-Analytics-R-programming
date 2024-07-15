dataset=read.csv('usedcars.csv')
View(dataset)
X=select(dataset,1,3)  
X=scale(dataset)
set.seed(6)
wcss=vector()
for (i in 1:10) wcss[i] = sum(kmeans(X, i)$withinss)
plot(x=1:10,
     y=wcss,
     type = 'b',
     main=paste('The Elbow Method'),
     xlab='Number of Clusters',
     ylab='WCSS')
set.seed(29)
kmeans=kmeans(x=X,
              centers = 4,
              iter.max = 300,
              nstart=10)
library(cluster)
clusplot(x=X,
         clus=kmeans$cluster,
         lines=0,
         shade= TRUE,
         color = TRUE,
         labels=  2,
         plotchart= FALSE,
         main= paste('Clusters of customers'),
         xlab='Y',
         ylab='Year')
warnings()
