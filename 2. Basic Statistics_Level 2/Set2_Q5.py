import numpy as np
# from scipy import stats
from scipy.stats import norm

# Assuming $1 = 45 rupees

# Total mean of profits in millions
mean = (5+7) * 45 
# print(mean)

# Total standard dev of profits in millions
sd = ((3^2)+(4^2)) * 45

# print('Range is Rs',(stats.norm.interval(0.95,540,315)),'in Millions')

# scipy.stats.norm(*args, **kwds) 
# The location (loc) keyword specifies the mean. The scale (scale) keyword specifies the standard deviation.

# Range(centered on the mean) that contais 95% probability for the annual profit of the company
a, b = norm.interval(alpha=0.95, loc=mean, scale=sd)
print(a*45,b*45) # in rupees

# Z = (X-μ)/σ,  5% of the z-values lie below –1.64.
X = (-1.645*sd)+mean
print(X*45) # in rupees



