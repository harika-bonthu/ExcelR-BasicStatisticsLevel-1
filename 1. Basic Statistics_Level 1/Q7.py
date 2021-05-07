# Importing necessary libraries
import pandas as pd
import numpy as np
from scipy.stats import mode

# Reading the file as dataframe
df = pd.read_csv("Q7.csv")

# Fetching the required columns: Points, Score, Weigh
df = df.iloc[:, 1:4]

# Calculating the measures of central tendency and dispersion 
for (columnName, columnData) in df.iteritems():
   print("*** Measures of central tendency, dispersion for '{}' ***".format(columnName))
   print("Mean: {:0.3f}".format(np.average(columnData.values)))
   print("Median: {:0.3f}".format(np.median(columnData.values)))
   print("Mode: {}".format(mode(columnData.values)[0]))
   print("Variance: {:0.3f}".format(np.var(columnData.values)))
   print("Standard Deviation: {:0.3f}".format(np.std(columnData.values)))
   print("Range: {:0.3f}".format(max(columnData.values)-min(columnData.values)) + '\n')