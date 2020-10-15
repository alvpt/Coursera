## Have total emissions from PM2.5 decreased in the United States 
## from 1999 to 2008? Using the base plotting system, make a plot
## showing the total PM2.5 emission from all sources for each of 
## the years 1999, 2002, 2005, and 2008.

library(dplyr)

## This first lines loads the data

NEI <- readRDS(".\\data\\summarySCC_PM25.rds")
SCC <- readRDS(".\\data\\Source_Classification_Code.rds")

NEIgrouped <- NEI %>% group_by(year)


png(file=".\\plot1.png",
    width=480, height=480)

NEIgrouped %>% summarise(
  Emissions = sum(Emissions)
) %>% plot(main = expression("Total US "~ PM[2.5]~ 
           "Emissions by Year"), ylab = expression(
           "Total US "~   PM[2.5] ~ "Emissions"), xlab = "Year")

model <- lm(Emissions~year, data= NEIgrouped %>% summarise(
Emissions = sum(Emissions) ) )

abline(model, lwd = 2)

dev.off()
