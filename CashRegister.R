products
count
showProducts <- function(){
  cat("Products you can buy\n1.Bread\n2.Butter\n3.Cheese\n4.Ham\n5.Eggs\n")
}



#recordSaleValue() <- function
#giveOutChange()
#checkBalance()

showProducts()
wantToAddMore <- "y"
while(wantToAddMore == "y"){
   products[length(products)+1] <- as.integer(c(readline(prompt = "What do you want to buy? ")))
   count[length(count)+1] <- as.integer(c(readline(prompt = "How many would you like to buy?")))
  wantToAddMore <- readline(prompt = "Do you want to buy anything else?")
}
