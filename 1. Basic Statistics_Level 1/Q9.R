###Q9### Calculating Skewness and Kurtosis
Q9_a <- read.csv(file.choose())
View(Q9_a)
attach(Q9_a)
library(e1071) 
skewness(speed)
kurtosis(speed)
skewness(dist)
kurtosis(dist)

Q9_b <- read.csv(file.choose())
View(Q9_b)
attach(Q9_b)

skewness(SP)
kurtosis(SP)
skewness(WT)
kurtosis(WT)