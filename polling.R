library(tidyverse)
library(rvest)
library(janitor) 

url <-  "https://en.wikipedia.org/wiki/Opinion_polling_for_the_2022_French_presidential_election#Macron_vs._Le_Pen"

url_html <-read_html(url)

url_tables <-url_html%>%html_table(fill=TRUE)

results<-url_tables[[9]]

male<-results[-c(2),]

male<-male[-c(1),]

colnames(male)<-c('Pollingfirm','FieldWorkDate','SampleSize','Abs','MacronLREM','LePenNR')

write_csv(male,paste0('data/',Sys.Date(),'_Macron_LePen','.csv'))    
