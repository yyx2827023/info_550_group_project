# Engagement report GitHub (Yixin Yang & Michela Stephens)
------------------------------------------------------------------------

## Initial code description
README.md : description of the project files

subanalysis_Stepthens:
  code: 01_correlation.R
#(generate all two output by examing the correlation between length of video and engagement)
  output :
    pearson_correlation_before{config_list$week}.rds
    scatter_before{config_list$week}.rds
  report

Makefile 
#(using make to generate output files)
config.yml 
#(define default and test parameters)
data
  data.rds
  course_engagement.csv
  course_engagement_dictionary.md
render.R 
#(knit correlation_report.Rmd)

## Collaborative Engagement report GitHub description
Team designations: 
    leader: Yixin Yang
    Coder: Michela Stephens

The element of course engagement that each coder in your group will be responsible for summarizing:
    Michela Stephens: examine the correlation between length of video and engagement

### GitHub repository


### Customization element of the report. 
The parameter in Config file is "week"", default value is week 3 and test value it week 6. By changing the parameter value, the correlation between length of video and engagement will reflect the correletaion before week3 and week6. 
The output file names will change as well as the rendered html file name will change based on the parameter values.
Respectively, the results of correction will change from default correlation of views and length before week3 to test correlation of views and length before week6
