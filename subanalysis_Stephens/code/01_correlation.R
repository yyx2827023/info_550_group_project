#Read Data
library("tidyverse")
library("ggpubr")
library(lubridate)
here::i_am("subanalysis_Stephens/code/01_correlation.R")
data <- read.csv( file = here::here("data/course_engagement.csv")
                 ,header = TRUE)
saveRDS(data, 
        file = here::here("data/data.rds"))
#config paramter
WHICH_CONFIG<-Sys.getenv("WHICH_CONFIG")  

config_list <- config::get(
  config = WHICH_CONFIG
)

data <- data[which(data$week <= config_list$week),]
#Changing time to seconds
data$length[4]="64:56"

data$length <- as.numeric(ms(data$length))


#Scatter plot visualization
m1<-ggscatter(data, x = "views", y = "length", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Number of Views", ylab = "Time (seconds)")

scatter_filename <- paste0(
  "scatter_before_",
  config_list$week,
  "weeks",
  ".rds"
)
saveRDS(m1, 
        file = here::here("subanalysis_Stephens/output",scatter_filename))
#Pearson Correlation test
res <- cor.test(data$views, data$length, 
                method = "pearson")
pearson_filename <- paste0("pearson_correlation_before",
                           config_list$week,
                           "weeks",
                           ".rds")
saveRDS(res,
        file = here::here("subanalysis_Stephens/output/",pearson_filename))