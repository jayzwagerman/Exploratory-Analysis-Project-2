library(ggplot2)
rds <- readRDS("summarySCC_PM25.rds")
scc <- readRDS("Source_Classification_Code.rds")

df <- merge(rds,scc, by="SCC")
dfcoal <- df[grepl("Coal", df$Short.Name),]


png('plot4.png')
ggplot(dfcoal, aes(x = factor(year), y = Emissions, fill =type)) + 
  geom_bar(stat= "identity", width = .4) + xlab("year") +ylab("Coal-Related PM2.5 Emissions") + 
  ggtitle("Total Coal-Related PM2.5 Emissions")
dev.off()