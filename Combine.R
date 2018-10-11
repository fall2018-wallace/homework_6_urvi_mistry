
popdata <- CensusData
arrests <- USArrests
CombinedData <- merge(popdata,arrests,by.x = "statename",by.y = 0)
