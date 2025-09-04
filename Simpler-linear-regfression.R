#Author:Jaevon, Data: Aug 28, 2025; purpose :Test simple linear regression 

# Get some dummy dataset
cars <- mtcars

head(cars)

#Scatter plot on training data
scatter.smooth(x=cars$mpg, y= cars$disp, main="SpeedVSDistance")

# Calculate correlation value between mpg and disp
cor(cars$mpg, cars$disp)

# Split training and testing data for regression 
training_data <- cars[1:16,]
test_data <- cars[17:32,]

# Build a regression model
regression_result <- lm(mpg ~ disp, data=training_data)

# predict regression function on test data
prediction_result <- predict(regression_result,test_data)

# Results of prediction 
actual_prediction_values <-
data.frame(cbind(actuals=training_data$mpg,
predicateds=prediction_result))
