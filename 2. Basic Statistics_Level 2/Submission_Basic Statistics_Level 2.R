###########################################################################
######         Set+1_Descriptive+statistics+Probability+(2)         #######
###########################################################################
### Q1 ###
Q1 <- read.csv(file.choose())
# View(Q1)
# colnames(Q1)<-c("Company","X")
View(Q1)
attach(Q1)
measure_X <- substring(Q1$Measure.X,1,5)
measure_X
class(measure_X)
numeric_x <- as.integer(measure_X)
numeric_x
class(numeric_x)
boxplot(numeric_x)

mean(numeric_x)
var(numeric_x)
sd(numeric_x)

# a <- c(
#   24.23,
#   25.53,
#   25.41,
#   24.14,
#   29.62,
#   28.25,
#   25.81,
#   24.39,
#   40.26,
#   32.95,
#   91.3,6
#   25.99,
#   39.42,
#   26.71,
#   35.00
# )
# a
# boxplot(a)


### Q5 ###
X <- c(-2000,-1000,0,1000,2000,3000)
X
sd(X)
mean(X)


### Set 2_Q1 ###
1-pnorm(50,45,8)

#Q2
pnorm(44,38,6)
400*(1-pnorm(44,38,6))
400*(pnorm(44,38,6)-pnorm(38,38,6))

400*pnorm(30,38,6)


### Set3 ###
pt(qt(0.975,1999),1999)#clear????


qt(0.975,)
