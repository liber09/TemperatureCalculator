#Function to calculate lowest temperature.
#sets a really high starting temperature, then
#loops through the list of temperatures and if a lower one is found, just 
#replace the lowest with new lowest one. Return the lowest temperature.
lowestTemperature <- function(temperatures) {
  lowest <- 999999
  for(temp in temperatures){
    if(temp < lowest){
      lowest = temp
    }
  }
  return (lowest)
}

#Function to calculate highest temperature.
#sets starting temperature to 0, then
#loops through the list of temperatures and if a higher one is found, just 
#replace the highest with new highest one. Return the highest temperature.
highestTemperature <- function(temperatures) {
  highest <- 0
  for(temp in temperatures){
    if(temp > highest){
      highest = temp
    }
  }
  return (highest)
}

#Function to calculate average temperature.
#loops through the list of temperatures and sum the values together. 
#then divide that sum with the length of the vector. 
#Return that average temperature.
averageTemperature <- function(temperatures) {
  totalTempSum <- 0
  for(temp in temperatures){
    totalTempSum <- (totalTempSum+temp)
  }
  average <- totalTempSum/length(temperatures)
  return (average)
}