# importing necessary libraries
import pandas as pd
import numpy as np
from scipy.stats import skew
from scipy.stats import kurtosis

Q9_a = pd.read_csv('Q9_a.csv')
Q9_a = Q9_a.iloc[:, 1:3]
# print(Q9_a.head())

for (ColumnName, ColumnData) in Q9_a.iteritems():
	print("*** Measure of Skewness, Kurtosis '{}' ***".format(ColumnName))
	print("Skewness: {:0.3f}".format(skew(ColumnData.values)))
	print("Kurtosis: {:0.3f}".format(kurtosis(ColumnData.values))+'\n')


Q9_b = pd.read_csv('Q9_b.csv')
Q9_b = Q9_b.iloc[:, 1:3]
# print(Q9_b.head())

for (ColumnName, ColumnData) in Q9_b.iteritems():
	print("*** Measure of Skewness, Kurtosis '{}' ***".format(ColumnName))
	print("Skewness: {:0.3f}".format(skew(ColumnData.values)))
	print("Kurtosis: {:0.3f}".format(kurtosis(ColumnData.values))+'\n')