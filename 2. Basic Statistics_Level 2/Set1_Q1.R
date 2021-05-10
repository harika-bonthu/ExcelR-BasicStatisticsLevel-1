# To plot the data, find the outliers and find out  ??, ??2, ??

# Reading the csv data file
# Q1 = read.csv((file.choose()))
Q1 = read.csv('Set1_Q1.csv')
View(Q1)
attach(Q1)

# Removing the % symbol and storing the Measure.X values into a variable
measure_X <- substring(Q1$Measure.X,1,5)
measure_X

boxplot(measure_X) #couldn't plot as the values are of non-numeric data type.

# Converting into numeric datatype
numeric_Measure_X <- as.numeric(measure_X)
numeric_Measure_X

# Plotting a blot plot
boxplot(numeric_Measure_X, horizontal=TRUE,main="Boxplot of 'Measure.X' column values")

# histogram
hist(numeric_Measure_X)

# Calculating the mean, Variance, and Standard deviation
mean(numeric_Measure_X)
var(numeric_Measure_X)
sd(numeric_Measure_X)

# Alternatively we can get the mean, standard deviation values by using a builtin function describe()
library(psych)
describe(numeric_Measure_X)
