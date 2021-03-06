library(tidyverse)
library(rvest)
library(janitor) 

url <- "https://www.resultats-elections.interieur.gouv.fr/presidentielle-2022/FE.html"
url_html <-read_html(url)
url_tables <-url_html%>%html_table(fill=TRUE) 
results<-url_tables[[2]]
write_csv(results,paste0('data/',Sys.Date(),'_results_2022_election','.csv'))   
