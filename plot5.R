library(ggplot2)
rds <- readRDS("summarySCC_PM25.rds")
baltonroad <- subset(rds,fips==24510 & type=="ON-ROAD") 

baltsumbyyearonroad <- aggregate(baltonroad$Emissions, by = list(year = baltonroad$year,type =baltonroad$type), sum)
png('plot5.png')
qplot(year,x, data=baltsumbyyearonroad,  geom = "line",
      main = "Motor Vehicle Emissions in Baltimore", xlab = "Year",ylab = "PM2.5 Emissions")
dev.off()