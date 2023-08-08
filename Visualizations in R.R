#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
library(datasets)
airquality<-datasets::airquality
## Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
## Columns
airquality[,c(1,2)]

df<-airquality[,-6]
df

summary(airquality)

airquality$Wind

summary(airquality$Wind)

#### summary of data ####
summary(airquality)
summary(airquality$Wind)

## plotting ##

plot(airquality$Wind)
plot(airquality$Wind,airquality$Temp,type="p") 
plot(airquality)

# points and lines
plot(airquality$Wind,type = "b") #type p:points,l:line,b:both
plot(airquality$Wind,xlab = 'Ozone concentration',ylab='no of instances',
     main = 'ozone level in NY city',col='blue')

# Horizontal Bar plot
barplot(airquality$Ozone, main = 'ozone conc in air',ylab= 'ozone levels',
        col = 'blue',horiz = F,axes=T)

# Histogram
hist(airquality$Ozone,breaks = 20)
hist(airquality$Temp, main = 'solar radiation values in air',
     xlab='Solar rad.',col = 'blue')

#single box plot
boxplot(airquality$Wind,main='boxplot')
boxplot.stats(airquality$Wind)

#Multiple box plots
boxplot(airquality[,1:4],main='Multiple Box plot')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: numeric value indicating the orientation of the tick mark labels and any other text added to a 
# plot after its initialization. The options are as follows: always parallel to the axis (the default, 0), 
# always horizontal (1), always perpendicular to the axis (2), and always vertical (3).)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(3,3,3,3),las=0,bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type="l")
plot(airquality$Ozone,type="l")
barplot(airquality$Ozone,main='ozone conc in air',
        xlab='ozone levels',col='green',horiz=TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='multiple box plot')


## e_quakes=datasets
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm=T)
#top 10 and last 10 rows
head(quakes,10)
tail(quakes,10)

quakes[,c(1,2)]

df<-quakes[,-6]
df

#summary
summary(quakes[,1])
quakes$lat
summary(quakes$lat)

#plots
plot(quakes$lat)
plot(quakes$lat,quakes$long,type='p')
plot(quakes)

#points and lines
plot(quakes$lat,type = 'b')
plot(quakes$lat,xlab = "x",ylab="Y",main = "lattitude",col='blue')

# horizontal bar plot
barplot(quakes$stations,main='quakes data',xlab = 'lattitude',col='blue',
        horiz = F,axes = T)

#histogram
hist(quakes$lat,breaks = 10)
hist(quakes$depth,
     main = 'quakes depth',
     xlab='depth',col='blue')

#single box plot
boxplot(quakes$long,main='boxplot')
boxplot.stats(quakes$long)

#multiple box plots
boxplot(quakes[,1:4],main='Multiple box plot')

par(mfrow=c(3,3), mar=c(3,3,3,3), las=0, bty="o")
plot(quakes$lat)
plot(quakes$lat,quakes$long)
plot(quakes$lat,type='l')
plot(quakes$lat,type='l')
plot(quakes$lat,type='l')
barplot(quakes$lat,main="quakes lattitudes",xlab='lats',
        col='green',horiz=TRUE)
hist(quakes$depth)
boxplot(quakes$mag)
boxplot(quakes[,1:4],main='Multiple box plot')
