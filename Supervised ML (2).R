library(ggplot2)
ggplot(student_scores,aes(Hours,Scores))+geom_point()+geom_smooth(method=lm,se=FALSE,fullrange=TRUE)