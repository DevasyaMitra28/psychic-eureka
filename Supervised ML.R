student_scores=read.csv("http://bit.ly/w-data")
head(student_scores)

x=student_scores$Hours
y=student_scores$Scores

x
y

cor(x,y)
cor.test(x,y)

model=lm(y~x)
model
summary(model)
fitted(model)
predict(model)
y
cbind(y,predict(model))

plot(x,y,main="Hours vs. Scores",xlab="Hours",ylab="Scores")
abline(model,col="blue",lty="dashed")
points(x,fitted(model),pch=20,col="red")

library(ggplot2)
ggplot(student_scores,aes(Hours,Scores))+geom_point()+geom_smooth(method=lm,se=FALSE,fullrange=TRUE)

R2=summary(model)$r.squared
R2

plot(model,1)
resid(model)
anova(model)

##############################

a=data.frame(x=9.25)
predict(model,a)

coef(model)[1]+coef(model)[2]*9.25


library(tinytex)