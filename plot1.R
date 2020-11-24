rm(list=ls())
setwd("C:/Users/edgar/OneDrive/Data Science Specialization/04 Exploratory Data Analysis/Week 1/06 Course Project 1")
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
setwd("C:/Users/edgar/OneDrive/Data Science Specialization/04 Exploratory Data Analysis/Week 1/06 Course Project 1/ExData_Plotting1")
hpcs<-hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]
hpcs$Global_active_power<-as.numeric(hpcs$Global_active_power)
png(filename="plot1.png",width=480,height=480,units="px")
hist(hpcs$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
