## Of the four types of sources indicated by the 
##  \color{red}{\verb|type|}type (point, nonpoint, 
## onroad, nonroad) variable, which of these four 
## sources have seen decreases in emissions from 
## 1999-2008 for Baltimore City? Which have seen 
## increases in emissions from 1999-2008? Use the 
## ggplot2 plotting system to make a plot answer 
## this question.



library(dplyr)
library(ggplot2)


## This first lines loads the data

NEI <- readRDS(".\\data\\summarySCC_PM25.rds")
SCC <- readRDS(".\\data\\Source_Classification_Code.rds")

NEIgrouped <- NEI %>% group_by(year, type)

png(file=".\\plot3.png",
    width=480, height=480) 

ggplot(data=NEIgrouped %>% summarise( Emissions = sum(Emissions)), 
       aes(x=year, y=Emissions)) + geom_point() + 
       geom_smooth(method = "lm", se=FALSE)+ facet_grid(type ~ .) +
       ggtitle(expression("Total Baltimore " ~ PM[2.5] ~ 
                            "Emissions by Type and Year")) +
       ylab(expression("Total Baltimore " ~ PM[2.5] ~ "Emissions")) +
       xlab("Year")

dev.off()


