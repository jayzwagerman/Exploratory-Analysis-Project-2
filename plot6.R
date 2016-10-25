library(ggplot2)
rds <- readRDS("summarySCC_PM25.rds")
labaltonroad <- subset(rds,fips %in% c("24510","06037") & type=="ON-ROAD") 

labaltsumbyyearonroad <- aggregate(labaltonroad$Emissions, 
  by = list(year = labaltonroad$year,type = labaltonroad$type, zip = labaltonroad$fips), sum)

png('plot6.png')
qplot(year,x, data=labaltsumbyyearonroad, color = zip, geom = "line",
      main = "Motor Vehicle Emissions Baltimore Vs Los Angeles", xlab = "Year",ylab = "PM2.5 Emissions")
dev.off()