rds <- readRDS("summarySCC_PM25.rds")

sumbyyear <- aggregate(rds$Emissions, by = list(rds$year), sum)

png('plot1.png')
plot(sumbyyear, type = "o", main = "Total PM2.5 Emissions", xlab = "year", 
        ylab = "PM2.5 Emissions", pch = 19, col = "orange", lty = 4)
dev.off()
