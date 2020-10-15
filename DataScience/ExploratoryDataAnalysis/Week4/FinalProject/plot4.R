## Across the United States, how have emissions 
## from coal combustion-related sources changed 
## from 1999-2008?

library(dplyr)
library(ggplot2)

## This first lines loads the data

NEI <- readRDS(".\\data\\summarySCC_PM25.rds")
SCC <- readRDS(".\\data\\Source_Classification_Code.rds")

SCCcoal <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
NEIcoal <- NEI[NEI$SCC %in% SCCcoal$SCC,]
totalCoal <- aggregate(Emissions ~ year + type, NEIcoal, sum)

png(file=".\\plot4.png",
    width=480, height=480) 

ggplot(totalCoal, aes(year, Emissions, col = type)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Total US" ~ PM[2.5] ~ "Coal Emission by Type and Year")) +
  xlab("Year") +
  ylab(expression("US " ~ PM[2.5] ~ "Coal Emission")) + 
  scale_colour_discrete(name = "Type of sources") +
  theme(legend.title = element_text(face = "bold"))

dev.off()