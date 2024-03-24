library(xlsx)
grades<-read.xlsx("D://吴凤箫//homework//studentgrades.xlsx",1)
grades
str(grades)
library(readxl)
dataset <- read_excel("D://吴凤箫//homework//studentgrades.xlsx")
View(dataset)
rm(list = ls())
library(xlsx)
library(foreign)
data<-read.spss("D://吴凤箫//homework//onesamplettest.sav")
library(xlsx)
leadership<-read.xlsx("D://吴凤箫//homework//leader.xlsx",1)

mydata<-data.frame(x1=c(2,2,6,4),x2=c(3,4,2,8))
View(mydata)
mydata$sumx<-mydata$x1+mydata$x2
mydata$meanx<-(mydata$x1+mydata$x2)/2
attach(mydata)
detach(mydata)
attach(mydata)
mydata<-transform(mydata,sumx=x1+x2,meanx=(x1+x2)/2)
leadership$年龄[leadership$年龄==99]<-NA
leadership$agecat[leadership$年龄>75]<-"elder"
leadership$agecat[leadership$年龄>=55&leadership$年龄<=75]<-"Middle aged"
leadership$agecat[leadership$年龄<55]<-"Young"

View(leadership)
leadership<-rename(leadership,c(经理人='managerID',日期='testDate'))

is.na(leadership)

x<-c(1,2,NA,3)
y<-x[1]+x[2]+x[3]+x[4]
z<-sum(x)
y
z
y=sum(x,na.rm=TRUE)
y

leadership
new.data<-na.omit(leadership)
new.data

mydates<-as.Date(c("2007-06-22",'2004-02-13'))
mydates

strDates<-c("01/05/1965",'08/16/1975')
dates<-as.Date(strDates,"%m/%d/%Y")
dates

today<-Sys.Date()
format(today,format="%B %d %Y")

startdate<-as.Date("2004-02-13")
enddate<-as.Date("2011-01-22")
days<-enddate-startdate

today<-Sys.Date()
dob<-as.Date("1956-10-12")
difftime(today,dob,units="weeks")