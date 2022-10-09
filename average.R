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

temp <- c(25,20,20,22,18,20,22,25,28,25,20,20,21,16,17,19,18,19,22,21,23,26,22,15,19,23,23,20,25,22)

#print the lowest temperature using string interpolation 
sprintf("Average temperature is %s degrees",  averageTemperature(temp))

