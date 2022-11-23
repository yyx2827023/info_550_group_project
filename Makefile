render: render.R subanalysis_Stephens/report/correlation_report.Rmd data/data.rds 01_correlation.R
	Rscript render.R

01_correlation.R: subanalysis_Stephens/code/01_correlation.R data/course_engagement.csv
	Rscript subanalysis_Stephens/code/01_correlation.R

data/data.rds: subanalysis_Stephens/code/00_data.R data/course_engagement.csv
	Rscript subanalysis_Stephens/code/00_data.R

.PHONY: clean
clean: 
	rm -f subanalysis_Stephens/output/*.rds && rm -f subanalysis_Stephens/output/*.png && rm -f *.html

.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"