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

