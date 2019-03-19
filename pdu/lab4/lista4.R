

calkaMonteCarlo <- function(f, a, b, n = 1000) {
  stopifnot(is.function(f))
  stopifnot(is.numeric(a), length(a) == 1,
            is.numeric(b), length(b) == 1,
            a < b)
  stopifnot(is.integer(n), n >0)
  
  
  fmin = min(f(a),f(b))
  fmax = max(f(a), f(b))
  
  x <- runif(n, min = a, max = b)
  y <- runif(n, fmin, fmax)
  
  suma <- sum(y <= f(x))/n
  
  suma * (b-a) * (fmax -fmin) + (b-a)* fmin

  
}

f <- function(x) {
  
  x^3
}

calkaMonteCarlo(f,1,5)


#4.8

posortowanePunkty <- function(n, m, nm){
  stopifnot(n > 0, m > 0,
            is.numeric(n), is.numeric(m),
            n%%1 == 0, m%%1 == 0)
  
  stopifnot(length(nm) == n*m)
  
  grupujexyz <- rep(1:m, n)
  
  punkty <- split(nm, grupujexyz)
  
  odleg <- sapply( punkty,
                         function(x) sqrt(sum(x^2)))
  unsplit(punkty[order(odleg)], grupujexyz)
  
}


nm <- c(5,2,3,4,1,2,3,4)

n = 2
m = 4

posortowanePunkty(4,2,nm)


#4.9

approxinver <- function(f, y, a, b, k=100) {
  stopifnot(b > a,
            is.numeric(a), is.numeric(b), 
            k > 2)
  x <- seq(a,b, length.out = k)
  
  fminus1 <- approxfun(x,f(x))
  

  fminus1(y)
  
}

f <- function(x) {sin(x)}
f(0)

approxinver(f,c(0,pi/6,pi/4), 0,pi)


