# To plot the data, find the outliers and find out μ, σ2, σ

# Importing necessary libraries
import pandas as pd
import matplotlib.pyplot as plt
from statistics import *

# Reading the csv files into a pandas dataframe
Q1 = pd.read_csv('Set1_Q1.csv')

# print(Q1)

# Converting the 'Measure X' column into a list and removing the % symbol
Measure_X = Q1['Measure X'].str[:5].tolist()

# Coverting each of the list elements from str format to float
float_Measure_X = []
for str in Measure_X:
    float_Measure_X.append(float(str))

# print(float_Measure_X)

# Calculating Mean(μ), Variance(σ2), and Standard Deviation(σ)
print("Mean: ", mean(float_Measure_X))
print("Variance: ", variance(float_Measure_X))
print("Standard Deviation: ", stdev(float_Measure_X))

# Plotting a histogram
plt.subplot(2,1,1)
plt.hist(float_Measure_X)
plt.title("Histogram of 'Measure X' column values")

# Plotting a boxplot
plt.subplot(2,1,2)
plt.boxplot(float_Measure_X, vert=False)
plt.title("Boxplot of 'Measure X' column values")
plt.show()







