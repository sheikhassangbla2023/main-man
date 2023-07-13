df<-iris
# write.csv(df, 'Data/phenotype.csv')

#change packages
library(FactoMineR)
library(factoextra)



str(df)
table(df$Species)

names(df)<-c('temperature', 'rainfall', 'humidity','speed')

df[,c(1:3)]

# acp

acp<-PCA(df[,-5],ncp = 3,graph = T)
