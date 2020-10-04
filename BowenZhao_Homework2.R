##Question 1:
rm(list=ls())
a = as.integer(readline("Enter an integer:"))  #here, I let user input the three numbers
b = as.integer(readline("Enter an integer:"))
c = as.integer(readline("Enter an integer:"))

is_pythagorean = function(a,b,c){
  if(a*a+b*b==c*c){
    paste(TRUE)
  } else {
    indicator = FALSE
    paste(FALSE)
  }
} #here, I use a if,else statement to check the Pythagorean theorem, and print true false in the end. 
is_pythagorean(a,b,c)

##Question 2:
is_prime = function(a){
  condition_for_prime = TRUE
  for (i in 2:(a-1)) {
    if(a==2) {
      condition_for_prime = TRUE
      break
      }
    if(a%%i==0){
      condition_for_prime = FALSE
      break
    }
  }
  return(condition_for_prime)
}
#this is a function to check is the input number is prime or not. First, I make sure that 2 is prime
#for the rest of the numbers, I used a for loop to check the divisibility to see if the number is prime or not. 
for(i in 1000:100){
  is_prime(i)
  if (is_prime(i)) {
    print(i)
  }
}
#I just the for loop to run my function, and print the outputs

##Question 3a:
data_xavi_inventory    = c( 20,30,50,30,20,60,30,30,32)
matrix_xavi_inventory  = matrix(data_xavi_inventory, nrow =3, ncol = 3, byrow = TRUE)
price_ingredient       = c(5,45,10)
price_blendA           = sum(matrix_xavi_inventory[1,] * price_ingredient)
price_blendB           = sum(matrix_xavi_inventory[2,] * price_ingredient)
price_blendC           = sum(matrix_xavi_inventory[3,] * price_ingredient)
print(paste("price of blend A is",price_blendA,", price of blend B is",price_blendB,", price of blend C is",price_blendC,sep=" "))
##Question 3b:
price_10_blendA        = 10*price_blendA
price_4_blendB         = 4*price_blendB
price_5_blendC         = 5*price_blendC
print(paste("total price of 10 blend A is",price_10_blendA,", total price of 4 blend B is",price_4_blendB,", total price of 5 blend C is",price_5_blendC,sep=" "))
