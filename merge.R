
arrests <- USArrests
arrests
CombinedData <- merge(data,arrests,by.x = "statename",by.y = 0)
CombinedData

Histogram_pop <- ggplot(data=CombinedData,aes(x=population))+geom_histogram(bins = 5, fill="white", color="black") +labs(x="Population") + ggtitle("Histogram for Population") #displayed a histogram using ggplot and obtimizing number of bins to 5 to resolve gaps in bins
