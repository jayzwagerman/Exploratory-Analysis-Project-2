library(ggplot2)
rds <- readRDS("summarySCC_PM25.rds")
balt <- subset(rds,fips==24510) 

baltsumbyyeartype <- aggregate(balt$Emissions, by = list(year = balt$year,type =balt$type), sum)

png('plot3.png')
qplot(year,x, data=baltsumbyyeartype, color = type, geom = "line",
      main = "Total Pm2.5 Emissions in Baltimore by Type", xlab = "Year",ylab = "PM2.5 Emissions")
dev.off()