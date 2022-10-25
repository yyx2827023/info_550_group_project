#Read Data

here::i_am("subanalysis_Stephens/code/01_correlation.R")
data <- read.csv( file = here::here("data/course_engagement.csv")
                 ,header = TRUE)
saveRDS(data, 
        file = here::here("data/data.rds"))
#Changing time to seconds
data$length[4]="64:56"
library(lubridate)
data$length <- as.numeric(ms(data$length))


#Scatter plot visualization
m1<-ggscatter(data, x = "views", y = "length", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Number of Views", ylab = "Time (seconds)")
saveRDS(m1, 
        file = here::here("subanalysis_Stephens/output/scatter.rds"))
#Pearson Correlation test
res <- cor.test(data$views, data$length, 
                method = "pearson")
saveRDS(res,
        file = here::here("subanalysis_Stephens/output/pearson.rds"))
