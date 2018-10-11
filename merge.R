
arrests <- USArrests
arrests
CombinedData <- merge(data,arrests,by.x = "statename",by.y = 0)
CombinedData

ggplot(data=CombinedData,aes(x=population))+geom_histogram(bins = 5, fill="white", color="black") +labs(x="Population") + ggtitle("Histogram for Population") #displayed a histogram using ggplot and obtimizing number of bins to 5 to resolve gaps in bins
ggplot(data=CombinedData,aes(x=Murder))+geom_histogram(bins=15,fill="red", color="black") +labs(x="Murder") + ggtitle("Histogram for Murder Rate") #displayed a histogram using ggplot and obtimizing number of bins to 15 to resolve gaps in bins
ggplot(data=CombinedData,aes(x=Assault))+geom_histogram(bins=10,fill="blue", color="black") +labs(x="Assault") + ggtitle("Histogram for Assault") #displayed a histogram using ggplot and obtimizing number of bins to 10 to resolve gaps in bins
ggplot(data=CombinedData,aes(x=popover18))+geom_histogram(bins=5,fill="green", color="black") +labs(x="Population Over 18") + ggtitle("Histogram for Population Over 18 years") #displayed a histogram using ggplot and obtimizing number of bins to 5 to resolve gaps in bins
ggplot(data=CombinedData,aes(x=Rape))+geom_histogram(bins=15,fill="yellow", color="black") +labs(x="Rape") + ggtitle("Histogram for Rape Rate") ##displayed a histogram using ggplot and obtimizing number of bins to 15 to resolve gaps in bins

#5)	Create a boxplot for the population, and a different boxplot for the murder rate.
ggplot(data = CombinedData,aes(x=factor(0),population)) + geom_boxplot() + labs(title="Box Plot for Population",x="Factors", y="Population") #displayed a box plot with factoring the data for x axis along with population on x axis
ggplot(data = CombinedData,aes(x=factor(0),Murder)) + geom_boxplot() + labs(title="Box Plot for Murder Rate",x="Factors", y="Murder Rate") #displayed a box plot with factoring the data for x axis along with Murder rate on x axis

#6)	Create a block comment explaining which visualization (boxplot or histogram) you thought was more helpful (explain why)
#Histogram provided a better visualization in this case because the box plot is little difficut to read, also outlier points in box plot make it confusing and difficut to understand.
#For such a simple data, a simple histogram is the best way without complicating the data

#7)	Calculate the number of murders per state
CombinedData$numMurders <- CombinedData$population*CombinedData$Murder/100000 #Calculate the number of murders
CombinedData

#8)	Generate a bar chart, with the number of murders per state
ggplot(data = CombinedData, aes(x=statename, y=numMurders)) + geom_col() + ggtitle("Bar Chart for Murders per state") #display a bar chart with statename on x axis and number of murder on y axis

#9)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named “Total Murders”.
ggplot(data = CombinedData, aes(x=statename, y=numMurders)) + geom_col() + ggtitle("Total Murders") + theme(axis.text.x = element_text(angle = 90, hjust = 1))  #adjusted the label tags on x axis by rotating them 90 degrees and setting horizontal adjustment to 1

#10) Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate
ggplot(data = CombinedData, aes(x=reorder(statename,Murder), y=numMurders, group = 1)) + geom_col() + ggtitle("Total Murders") + theme(axis.text.x = element_text(angle = 90, hjust = 1))  #used reorder function to sort statename by murder rate

#11)	 Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar
ggplot(data = CombinedData, aes(x=reorder(statename,Murder), y=numMurders, fill=percentover18)) + geom_col() + ggtitle("Total Murders") + theme(axis.text.x = element_text(angle = 90, hjust = 1)) #used fill attribute to adjust the colors of the bar char by data of percentover18

#12)	Generate a scatter plot – have population on the X axis, the percent over 18 on the y axis, and the size & color represent the murder rate
ggplot(data=CombinedData,aes(x=population,y=percentover18)) + geom_point(aes(size=Murder,color=Murder)) #displayed scatter plot using geom-point() and used aes in that to denote the color and size of the scatter plot points to murder rate
