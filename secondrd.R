library(tidyverse)
library(rvest)
library(janitor) 

sec_rl <-"https://www.resultats-elections.interieur.gouv.fr/presidentielle-2022/FE.html"
male22<-read_html(sec_rl)
sec_rl_tab<-male22%>%html_table(fill = TRUE)
MaLe_22<-sec_rl_tab[[2]] 
MaLe_22%>%
  clean_names('parsed')->MaLe_22
  
write_csv(MaLe22,paste0('data/',Sys.Date(),'_second_round','.csv'))   
  
