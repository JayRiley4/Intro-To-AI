#Author:Jaevon, Data: Aug 28, 2025; purpose :Test simple linear regression 

# Get some dummy dataset
cars <- mtcars

#Scatter plot on training data
scatter.smooth(x=cars$mpg, y= cars$disp, main="SpeedVSDistance")
