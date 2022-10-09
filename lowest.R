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

temp <- c(25,20,20,22,18,20,22,25,28,25,20,20,21,16,17,19,18,19,22,21,23,26,22,15,19,23,23,20,25,22)

#print the lowest temperature using string interpolation 
sprintf("Lowest temperature is %s degrees",  lowestTemperature(temp))
