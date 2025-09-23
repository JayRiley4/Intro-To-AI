#Author:Jaevon Riley;Data:09/23/25;Purpose:Test decision trees in R

library(rpart)

#Load some dummy dataset
kyphosis <- kyphosis

#create a decision tree
fit <- rpart(Kyphosis ~ Age + Number + Start, method="class", data=kyphosis)

#plot the results
plot(fit, main="Classification plot for Kyphosis", uniform=TRUE) 
text(fit, use.n=TRUE, all=TRUE, cex=.8)