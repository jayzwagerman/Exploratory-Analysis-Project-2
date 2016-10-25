rds <- readRDS("summarySCC_PM25.rds")
balt <- subset(rds,fips==24510) 

baltsumbyyear <- aggregate(balt$Emissions, by = list(balt$year), sum)

png('plot2.png')
plot(baltsumbyyear, type = "o", main = "Total PM2.5 Emissions", xlab = "year", 
     ylab = "PM2.5 Emissions", pch = 19, col = "purple", lty = 4)
dev.off()