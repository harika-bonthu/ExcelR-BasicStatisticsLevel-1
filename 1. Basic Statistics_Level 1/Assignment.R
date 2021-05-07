###Q7### Calculating measures of central tendency and measures of dispersion
Q7 <- read.csv(file.choose())
View(Q7)

attach(Q7)
summary(Q7) #Directly we can get mean, median, Min, Max, 1st and 3rd Quartile values

###Calculating the measures of Central Tendendy and Dispersion for all the 3 Variables(Points, Score, Weight)###
mean(Points)
median(Points)
mode(points) #Doesn't give the actual mode. So we can use the table fn. to know the frequencies.
table(Points)
var(Points)
sd(Points)
Range_Points<-max(Points)-min(Points)
Range_Points

mean(Score)
median(Score)
mode(Score) #Doesn't give the actual mode. So we can use the table fn. to know the frequencies.
table(Score)
var(Score)
sd(Score)
Range_Score<-max(Score)-min(Score)
Range_Score

mean(Weigh)
median(Weigh)
mode(Weigh) #Doesn't give the actual mode. So we can use the table fn. to know the frequencies.
table(Weigh)
var(Weigh)
sd(Weigh)
Range_Weigh<-max(Weigh)-min(Weigh)
Range_Weigh


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


###Q20 - Probability###
Q20 <- read.csv(file.choose())
View(Q20)
attach(Q20)
mean_MPG <- mean(MPG)
mean_MPG
sd_MPG <- sd(MPG)
sd_MPG

1-pnorm(38, mean_MPG, sd_MPG) #P(MPG>38)
pnorm(40, mean_MPG, sd_MPG) #P(MPD<40)
pnorm(50, mean_MPG, sd_MPG) - pnorm(20, mean_MPG, sd_MPG) #P(20<MPG<50)

###Q21 - Checking the Normality of MPG variable of Cars dataframe###
##question a###
qqnorm(MPG)
qqline(MPG) ##using QQ Plot

shapiro.test(MPG) #Shapiro test to test Normality

##question b##
Q21_b <- read.csv(file.choose())
View(Q21_b)
attach(Q21_b)

qqnorm(AT)
qqline(AT)

shapiro.test(AT)

qqnorm(Waist)
qqline(Waist)

shapiro.test(Waist)


###Q22 - Calculating Z-scores###
qnorm(0.95)
qnorm(0.97)
qnorm(0.80)

###Q23 - Caltulating T-Scores###
#Given sample size=25, so df = 24
qt(0.975,24) # @95% confidence 
qt(0.98,24) # @96% confidence 
qt(0.995,24) # @99% confidence 

###Q24###
#pt(tscore,df)

t_score <- (260-270)/(90/sqrt(18)) #formula to calculate t-score
#Given sample mean=260, population mean=270, sample size=18, sample standard deviation=90
pt(t_score,17)

