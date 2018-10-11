
arrests <- USArrests #get USArrests data into arrests
CombinedData <- merge(CensusData,arrests,by.x = "statename",by.y = 0) #
