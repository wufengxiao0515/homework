variable.1<-133
variable.1
print(variable.1)
cat("variable.1 is",variable.1,"\n")
cat("variable.2 is",variable.2)
x<-pi
class(pi)#查看数据的类型
typeof(pi)
seq_vec<-seq(1,4,by=0.5)
seq_vec
num_vec<-c(10.2,10.2,33.2)
num_vec
seq_vec<-seq(1,4,length.out=6)
seq_vec
char_vec<-c("s"=22,"a"=23,"v"=25)
char_vec
char_vec["a"]
char_vec[2]#用中括号获取元素值
p<-c(1,2,3,4,5,7,8)
q<-c("a","b","c","d",'e','f','g')
r<-c(p,q)
r
a<-c(1,3,5,7)
length(a)
b<-c(2,4,6,8)
length(b)
a+b
length(a+b)
a-b
a/b
a%%b

vec<-c(3,4,5,6)
char_vec<-c("s",'n','g','s')
logic_vec<-c(TRUE,FALSE,FALSE,TRUE)
out_list<-list(vec,char_vec,logic_vec)
out_list
list_data<-list(c('s','a','n'),list('b','m','t'))
print(list_data[1])
list_data<-list(c('s','a','n'),matrix(c(40,80,60,70,90,80),nrow=2),
                list("b",'m','t'))
list_data
print(list_data[1])
print(list_data[2])
print(list_data[3])

list2<-list(10,20)
print(list2)

v1<-unlist(list2)
v1
class(v1)

vec1<-c(1,3,5)
vec2<-c(10,11,12,13,14,15)
res<-array(c(vec1,vec2),dim=c(3,3,2))#dim：维度
print(res)

result<-apply(res,c(1),sum)
print(result)

p<-matrix(c(5:16),nrow=4,byrow=TRUE)
print(p)
q<-matrix(c(3:14),nrow=4,byrow = FALSE)
print(q)

row_names=c('r1','r2','r3','r4')
col_names=c('c1','c2','c3')
r<-matrix(c(3:14),nrow=4,byrow=TRUE,dimnames = list(row_names,col_names))
print(r)

r<-matrix(c(5:16),nrow=4,ncol=3)
r
s<-matrix(c(1:12),nrow=4,ncol=3)
s
sum<-r+s
print(sum)

a<-data.frame(
  ei=c(1:5),
  en=c('s','a','n','g','s'),
  si=c(1,2,3,4,5),
  date=as.Date(c('2012-01-01','2013-01-15','2014-01-15','2014-05-11','2015-01-17')),
  stringsAsFactors = FALSE
)
print(a)
print(a[-4,])
a.4<-a[,2]
a.4
print(is.factor(a))
library(xlsx)
any(grepl("xlsx",install.packages("xlsx")))
library(xlsx)
a<-data.frame(
  ei=c(1:5),
  en=c('s','a','n','g','s'),
  s=c(1,2,3,4,5),
  date=as.Date(c('120101','130923','141115','140511','150327')),
  stringsAsFactors = FALSE
)
a<-data.frame(
  ei=c(1:5),
  en=c('s','a','n','g','s'),
  s=c(1,2,3,4,5),
  date=as.Date(c('120101','130923','141115','140511','150327')),
  stringsAsFactors = FALSE
)
library(rJava)

library(xlsxjars)

library(xlsx)

matrix_data=matrix(c(1,2,3,4,5,6,7,8),nrow=4)
print(matrix_data)
class(matrix_data)

dataframe_data=as.data.frame(matrix_data)#转化为数据框
print(dataframe_data)
class(dataframe_data)

df1<-data.frame(a=1:3,b=letters[10:12],
                            c=seq(as.Date("2004-01-01"),by="week",length.out=3),
                            stringsAsFactors = TRUE)
dataframe_data1
class(dataframe_data1)
matrix_data1<-data.matrix(dataframe_data1[1:2])
matrix_data1
class(matrix_data1)

df2<-data.frame(x=11:15,y=15:11)
df2

Array1<-array(data=c(unlist(df2),unlist(df2)),
              dim=c(5,2,2),
              dimnames = list(rownames(df2),colnames(df2)))
Array1

m1<-matrix(c(1:10),nrow=5,ncol=6)
m1
a_m1<-apply(m1, 2, sum)
a_m1

movies<-c('a','b','c','d')
movies_lower<-lapply(movies, tolower)
movies_lower
str(movies_lower)

emp.data<-data.frame(
  name=c('roman','rafia','himanshu','jasmine','yash'),
  salary=c(623.3,915.2,611.0,729.0,843.25),
  start_data=as.Date(c("2012-01-01","2013-09-23","2014-09-23","2015-09-23","2016-09-23")),
  dept=c('o','i','h','t','f'),
  stringsAsFactors = FALSE
)

any(grepl("xlsx",install.packages("xlsx")))

library("xlsx")
library("rjava")
write.xlsx(emp.data,file="data/empoyee.xlsx",
           clo.names="true",row.names="true",sheetName="sheetname",
           append=TRUE)
library(rJava)
library(xlsx)
library(xlsxjars)
library(lubridate)
library(tidyverse)
library(conflicted)  

library(tidyverse)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")
update.packages("dplyr")
library(tidyverse)
library('xlsx')
library(packagefinder)

library(tidyverse)
library(xlsx)
surveys_complete<-read.xlsx("D://吴凤箫//homework//os_forest.xlsx",1)
library(ggplot2)
ggplot(data = surveys_complete, aes(x = Science, y = Social.Studies
)) + geom_point()

