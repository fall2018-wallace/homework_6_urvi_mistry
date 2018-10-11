
arrests <- USArrests
arrests
CombinedData <- merge(data,arrests,by.x = "statename",by.y = 0)
CombinedData
