dataset = read.csv('health.csv')
View(dataset)
X = select(dataset,2,5)
Y = select(dataset,3,4)
Z = select(dataset,1,5)


### For X

## Elbow-method

set.seed(123)
wcss = vector()
for(i in 1:10) wcss[i] = sum(kmeans(X,i)$withinss)
plot(x = 1:10,
     y = wcss,
     type = 'b',
     main = paste('The elbow method'),
     xlab = 'Number of Clusters',
     ylab = 'Density')

## K-Means Clustering

Kmeans = kmeans(x = X,
                centers = 5,
                iter.max = 500,
                nstart = 10)

## Visualization

library(cluster)
clusplot(x = X,
         clus = Kmeans$cluster,
         lines = 0,
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters'),
         xlab = 'Availability',
         ylab = 'Density')

## Hierarchical clustering

dendogram = hclust(dist(X,method = 'euclidean'),method = 'ward.D')
plot(dendogram,
     main = paste('Dendogram'),
     xlab ='Avalability',
     ylab = 'Density')

hc = hclust(dist(X,method = 'euclidean'),method = 'ward.D')
y_hc = cutree(hc,5)
y_hc

library(cluster)
clusplot(x=X,
         clus = y_hc,
         lines = 0,
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters'),
         xlab = 'Avalability',
         ylab = 'Density')

### For Y

## Elbow-method

set.seed(123)
wcss = vector()
for(i in 1:10) wcss[i] = sum(kmeans(Y,i)$withinss)
plot(x = 1:10,
     y = wcss,
     type = 'b',
     main = paste('The elbow method'),
     xlab = 'Number of Clusters',
     ylab = 'Density')

## K-Means Clustering

Kmeans = kmeans(x = Y,
                centers = 5,
                iter.max = 500,
                nstart = 10)

## Visualization

library(cluster)
clusplot(x = Y,
         clus = Kmeans$cluster,
         lines = 0,
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters'),
         xlab = 'Availability',
         ylab = 'Density')

## Hierarchical clustering

dendogram = hclust(dist(Y,method = 'euclidean'),method = 'ward.D')
plot(dendogram,
     main = paste('Dendogram'),
     xlab ='Avalability',
     ylab = 'Density')

hc = hclust(dist(Y,method = 'euclidean'),method = 'ward.D')
y_hc = cutree(hc,5)
y_hc

library(cluster)
clusplot(x=Y,
         clus = y_hc,
         lines = 0,
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters'),
         xlab = 'Avalability',
         ylab = 'Density')


### For Z

## Elbow-method

set.seed(123)
wcss = vector()
for(i in 1:10) wcss[i] = sum(kmeans(Z,i)$withinss)
plot(x = 1:10,
     y = wcss,
     type = 'b',
     main = paste('The elbow method'),
     xlab = 'Number of Clusters',
     ylab = 'Density')

## K-Means Clustering

Kmeans = kmeans(x = Z,
                centers = 5,
                iter.max = 500,
                nstart = 10)

## Visualization

library(cluster)
clusplot(x = Z,
         clus = Kmeans$cluster,
         lines = 0,
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters'),
         xlab = 'Availability',
         ylab = 'Density')

## Hierarchical clustering

dendogram = hclust(dist(Z,method = 'euclidean'),method = 'ward.D')
plot(dendogram,
     main = paste('Dendogram'),
     xlab ='Avalability',
     ylab = 'Density')

hc = hclust(dist(Z,method = 'euclidean'),method = 'ward.D')
y_hc = cutree(hc,5)
y_hc

library(cluster)
clusplot(x=Z,
         clus = y_hc,
         lines = 0,
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters'),
         xlab = 'Avalability',
         ylab = 'Density')

