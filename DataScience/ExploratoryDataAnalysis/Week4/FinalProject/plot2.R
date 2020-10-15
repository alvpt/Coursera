## Have total emissions from PM2.5 decreased in 
## the Baltimore City, Maryland (\color{red}{\verb|fips 
##  == "24510"|}fips == "24510") from 1999 to 2008? 
## Use the base plotting system to make a plot answering 
## this question.

library(dplyr)

## This first lines loads the data

NEI <- readRDS(".\\data\\summarySCC_PM25.rds")
SCC <- readRDS(".\\data\\Source_Classification_Code.rds")

NEI_filtered <- filter(NEI, fips == "24510")

NEIfilteredANDgrouped <- NEI_filtered %>% group_by(year)


png(file=".\\plot2.png",
    width=480, height=480)

NEIfilteredANDgrouped %>% summarise(
  Emissions = sum(Emissions)
) %>% plot(main = expression("Total Baltimore" ~ PM[2.5] 
                             ~ "Emissions by Year"), xlab = 
             "Year", ylab = expression("Total Baltimore "~ 
                                         PM[2.5] ~ "Emissions"))

model <- lm(Emissions~year, data= NEIfilteredANDgrouped %>% summarise(
Emissions = sum(Emissions) ) )

abline(model, lwd = 2)

dev.off()