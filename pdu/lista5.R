#5.1

x <- round(runif(10,0,10))
n <- length(x)

M <- matrix(0,
  nrow = n,
  ncol = n)

M[cbind(c(1:n), x)] <- 1

M
x

#5.2

M <- matrix(rnorm(25,0, 10), nrow = 5, ncol = 5)

softmax <- function(M){
  exp(M)/rowSums(exp(M))
}

M
M2 <-softmax(M)
round(M2)

hotone <- function(M){
  M2 <- softmax(M)
  apply(M2, 1, function(z){
    which.max(abs(1-z))
  })
        
}
hot <- hotone(M)

#5.3

hyperectangle <- function(X){
  apply(X,2,range)
}
X <- matrix(rnorm(24), nrow=6)

hyperectangle(X)

#5.4






