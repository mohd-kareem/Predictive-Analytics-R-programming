dataset=read.csv('mall.csv')
X = dataset[,4:5]

# elbow method
set.seed(6)
WCSS= vector()
for(i in 1:10) WCSS[i]=sum(kmeans(X,i)$withinss)
plot(x=1:10,
     y =WCSS,
     type='b',
     main = paste('The elbow method'),
     xlab= 'number of clusters',
     ylab = 'WCSS'
     )
#build k means clusterz
kmeans = kmeans(x=X,
                centers = 5,
                iter.max = 300,
                nstart = 10)


#plot a graph to see clusters made
library(cluster)
clusplot(x=X,
         clus = kmeans$cluster,
         lines = 0,
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab ="Annual income",
         ylab = 'spending Score')
