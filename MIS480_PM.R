train <- read.csv(file = "C:/Users/andre/OneDrive/MIS480/pp/train.csv", header=TRUE, stringsAsFactors=FALSE)
test <- read.csv(file = "C:/Users/andre/OneDrive/MIS480/pp/test.csv", header=TRUE, stringsAsFactors=FALSE)
dim(test)
dim(train)

summary(test)
summary(train)

model <- lm(SalePrice ~ MSZon4ng + LotArea + MSSubClass
            + Street + LotShape + LandContour + LotConfig + LandSlope
            + BldgType + HouseStyle + OverallQual + OverallCond
            + YearBuilt + YearRemodAdd + MasVnrArea + ExterQual
            + ExterCond + BsmtFinSF1 + BsmtFinSF2
            + BsmtUnfSF + CentralAir + X1stFlrSF
            + X2ndFlrSF + GrLivArea + BsmtFullBath + BsmtHalfBath
            + FullBath + HalfBath + BedroomAbvGr + KitchenAbvGr
            + TotRmsAbvGrd + Fireplaces + GarageCars + GarageArea
            + MoSold + YrSold + ScreenPorch, data = train)
summary(model)

#test_of_testdata
test_full <- test[complete.cases(test), ]
dim(test_full)

model_full_test <- predict(model, newdata = test_full)

model.predict <- data.frame(Predicted = model_test[0:20])
model.predict


#test_of_training_data_vs_actual
train_full <- train[complete.cases(train), ]
dim(train_full)

model_full_train <- predict(model, newdata = train_full)

Prediction <- data.frame(Train.Actual = train_full$SalePrice[0:20], 
                             Train.Prediction = model_full_train[0:20])
Prediction





