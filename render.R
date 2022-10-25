here::i_am("render.R")
library(rmarkdown)
#config paramter
WHICH_CONFIG<-Sys.getenv("WHICH_CONFIG")  

config_list <- config::get(
  config = WHICH_CONFIG
)
render(here::here("subanalysis_Stephens/report/correlation_report.Rmd"),output_file = paste0("correlation_report",config_list$week,".html"))
