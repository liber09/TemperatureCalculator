products <- c()
count <- c()
sum <- 0
amountInRegistry <- 2000
productPrices <- c(5,2,2,3,3)
showProducts <- function(){
  cat("Products you can buy\n1.Bread 5$\n2.Butter 2$\n3.Cheese 2$\n4.Ham 3$\n5.Eggs 3$\n")
}

recordSaleValue <- function(){
  for(i in 1:length(products)){
    sum <- sum + (count[i]*productPrices[products[i]])
  }
  return(sum)
}

giveOutChange <- function(sumToPay, paymentRecieved){
  amountInRegistry <<- amountInRegistry + paymentRecieved
  change <- paymentRecieved-sumToPay 
  amountInRegistry <<- amountInRegistry - change
  return(change)
}

checkBalance <- function(){
  moneyInCashRegistry <- amountInRegistry
  return(moneyInCashRegistry)
}

showProducts()
wantToAddMore <- "y"
while(wantToAddMore == "y"){
   products[length(products)+1] <- as.integer(c(readline(prompt = "What do you want to buy? ")))
   count[length(count)+1] <- as.integer(c(readline(prompt = "How many would you like to buy?")))
  wantToAddMore <- readline(prompt = "Do you want to buy anything else?")
}

sumToPay <- recordSaleValue()

cat("Your amount to pay is:")
cat(sumToPay)
paymentRecieved <- as.integer(readline(prompt = "How much do you pay? "))
moneyBack <- giveOutChange(sumToPay,paymentRecieved)
cat("You get money back: ")
cat(moneyBack)
cat("\nMoney in cashregistry is now: ")
cashInRegistry <- checkBalance()
cat(cashInRegistry)
