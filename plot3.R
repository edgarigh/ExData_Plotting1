rm(list=ls())
setwd("C:/Users/edgar/OneDrive/Data Science Specialization/04 Exploratory Data Analysis/Week 1/06 Course Project 1")
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
setwd("C:/Users/edgar/OneDrive/Data Science Specialization/04 Exploratory Data Analysis/Week 1/06 Course Project 1/ExData_Plotting1")
hpcs<-hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]
Sys.setlocale("LC_TIME","English")
dt<-strptime(paste(hpcs$Date,hpcs$Time),"%d/%m/%Y %H:%M:%S")
png(filename="plot3.png",width=480,height=480,units="px")
plot(dt,hpcs$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
points(dt,hpcs$Sub_metering_2,type="l",col="red")
points(dt,hpcs$Sub_metering_3,type="l",col="blue")
legend("topright",lwd=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
