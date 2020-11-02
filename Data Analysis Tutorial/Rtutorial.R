train = read.csv("train.csv",header = TRUE)
test = read.csv("test.csv",header = TRUE)

test.survived <- data.frame(Survived = rep("None",nrow(test)),test[,])

test.survived <- test.survived[c(2,1,3,4,5,6,7,8,9,10,11,12)]

str(data.combined)

data.combined <- rbind(train,test.survived)

data.combined$Pclass <- as.factor(data.combined$Pclass)
data.combined$Survived <- as.factor(data.combined$Survived)

table(data.combined$Survived)

table(data.combined$Pclass)

library(ggplot2)

train$Pclass <- as.factor(train$Pclass)
ggplot(train,aes(x = Pclass,fill = factor(Survived)))+geom_bar(width=0.5)+
  xlab("Pclass")+
  ylab("Total Count")+
  labs(fill="Survived")

head(as.character(train$Name))

length(unique(data.combined$Name))

dup.name <- as.character(data.combined[which(duplicated(data.combined$Name)),"Name"])



data.combined[which(data.combined$Name %in% dup.name),]

