here::i_am("subanalysis_Stephens/code/00_data.R")

data <- read.csv(here::here('data/course_engagement.csv'),
	header = TRUE)

saveRDS(data, file = here::here('data/data.rds'))