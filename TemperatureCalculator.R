#step1

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
    totalTempSum <- as.integer((totalTempSum+temp))
  }
  average <- (totalTempSum/length(temperatures))
  return (average)
}

#Function that takes user input for temperatures during 30 days.
tempInCity <- function(){
  temp <- 1:30
  for(i in 1:30){
    temp[i] <- as.integer((c(readline(prompt = "Enter temperature: "))))
  }
  return(temp)
}


#step2

#Enter the name of 10 cities and their temperature for each day in 1 month
#The print the min, max and average temperature using borh own functions an 
#built in functions
for(i in 1:10){
  city <- (c(readline(prompt = "Enter cityname: ")))
  temp <- tempInCity()
  cat("Own function lowest temperature in", city ,"is", lowestTemperature(temp), "degrees\n")
  cat("Built in lowest temperature in", city ,"is", min(temp),"degreees\n")
  cat("Own function highest temperature in", city ,"is", highestTemperature(temp), "degrees\n")
  cat("Built in highest temperature in", city ,"is", max(temp),"degreees\n")
  cat("Own function average temperature in", city ,"is", averageTemperature(temp), "degrees\n")
  cat("Built in average temperature in", city ,"is", mean(temp),"degreees\n")
}