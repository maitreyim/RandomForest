raw$Survived <- as.factor(raw$Survived);
#raw$Pclass <- as.factor(raw$Pclass);

set.seed(107);
install.packages('randomForest');
library(randomForest);
fit.rf = randomForest(Survived~Pclass+Sex+SibSp+Age+Fare+Embarked,
                      data=raw,importance=TRUE,do.trace=100,na.action=na.omit,
                      ntree=500);
test$Survived <- predict(model, newdata=test, type='class')
