set.seed(123)

#3.1
x <- round(rnorm(20,0,1),2)

print(x)

x[ (x >= -1 & x <= -1) | (x >= 1 & x<=2)]
x

?length
?sum

l <- length(x[x>=0])

l2 <- sum(x>=0)

l / length(x)
l2 / length(x)

?abs
?mean

mean(abs(x))

x[which.min(abs(x))]
x[which.max(abs(x))]

x[which.min(abs(x-2))]
x[which.max(abs(x-2))]

x

(x - min(x)) / (max(x) - min(x))

y <- ifelse(x >= 0, "nieujemne", "ujemne")
y

#altermnatywnie:
n <- length(x)
n
y <- character(n)
y
y[ x <0 ]<- "ujmena"
y[ x>=0 ] <- "nieujemne"

y

y <- ifelse(x < -1,"maly", ifelse( abs(x) <= 1, "sredni", "duzy"))
y

y <- floor(x) + 1/2
y

#3.2

x <- rnorm(20,0,1)
y <- 10*x +2

x <- rnorm(20,0,1)


korelacja_r <- function(x,y) {
  
  sdx <- sd(x)
  sdy <- sd(y)
  
  sum(((x-mean(x))/sdx * (y - mean(y))/sdy))/(length(x) -1)
  
}

korelacja_r(x,y)

#3.3

x <- runif(20,0,10)
y <- runif(20,0,10)

korealcjaSpearmana <- function(x,y){
  
  1 - (6*sum((rank(x) - rank(y))**2))/(length(x) * (length(x)**2 - 1))
  
}

korealcjaSpearmana(x,x)


#3.4

x <- runif(21)

srednia_k_win <- function(x,k){
  stopifnot(length(x)%%2 != 0)
  stopifnot(2*k <= length(x) - 1)
  
  #jak to zrobić???
  
}

#3.5
y <- sort(runif(20,0,10))
yy <- mean(y)

wspol_giniego <- function(x){
  
  y <- c(1:length(x))
  
  
  sum((2*y - length(x) - 1)*x)/((length(x)*(length(x) -1)*mean(y)))
}

wspol_giniego(y)


#3.6

factorial2 <- function(n){
  
  cumprod(c(1:n))[n]
}
  
factorial2(4)
  
#3.7
asinmoj <- function(x,m){
  stopifnot(m > 0, length(m) == 1, abs(x) < 1)
  
  n <- 0:m
  silnia_licznik <- factorial(2*n)
  silnia_mianownik <- factorial(n)**2
  licznik <- silnia_licznik * x^(2 *n + 1)
  mianownik <- silnia_mianownik * 4^n * (2*n + 1)
  
  return( sum(licznik / mianownik))
  
}

x <- 0.75
asin(x)
asinmoj(x,10)
asinmoj(x,100)
warnings

?cumprod


asin3 <- function(x,m) {
  stopifnot(m > 0, length(m) == 1, abs(x) < 1)
  
  n <- 1:m
  
  r <- x^2 * 0.5 * (2*n - 1)**2 /(n * (2*n + 1)) #to jest nasz ciag pryrostow
  sum(cumprod( c(x,r)))      #to zwroci, bo to ostatnia wyznaczona wartosc  
}

asin(x)
asin3(x,10)
asin3(x,100)


#3.9

top <- c(" _ ","  "," _ "," _ ","   "," _ "," _ "," _ "," _ "," _ ")
mid <- c("| |"," |"," _|"," _|","|_|","|_ ","|_ ","  |","|_|","|_|")
bot <- c("|_|"," |","|_ "," _|","  |"," _|","|_|","  |","|_|"," _|")

?paste

paste(c("a", "zabka", "krowa"), collapse = "~~~")

cyferki <- function(x) {
  t <- paste(top[x + 1], collapse = "")
  m <- paste(mid[x + 1], collapse = "")
  b <- paste(bot[x + 1], collapse = "")

  cat(t, m, b, sep="\n")
}

cyferki(c(4,2,1))


#3.8




