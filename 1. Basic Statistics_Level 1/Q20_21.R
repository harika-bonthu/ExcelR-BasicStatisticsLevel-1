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