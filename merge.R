
popdata <- clean_data
arrests <- USArrests
CombinedData <- merge(popdata,arrests,by.x = "statename",by.y = 0)
data<-CombinedData
