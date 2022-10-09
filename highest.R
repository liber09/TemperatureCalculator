#Function to calculate highest temperature.
#sets starting temperature to 0, then
#loops through the list of temperatures and if a higher one is found, just 
#replace the highest with new highest one. Return the highest temperature.
highestTemperature <- function(temperatures) {
  highest <- 0
  for(temp in temperatures){
    if(temp < highest){
      highest = temp
    }
  }
  return (highest)
}

temp <- c(25,20,20,22,18,20,22,25,28,25,20,20,21,16,17,19,18,19,22,21,23,26,22,15,19,23,23,20,25,22)

#print the lowest temperature using string interpolation 
sprintf("Highest temperature is %s degrees",  highestTemperature(temp))

