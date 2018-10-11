
arrests <- USArrests

CombinedData <- merge(data,arrests,by.x = "statename",by.y = 0)
CombinedData
