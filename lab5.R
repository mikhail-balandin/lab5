
e1 <- new.env(parent = baseenv())
assign("x", 
       envir = e1,
       x <- read.table("1.txt")
)
e2 <- new.env(parent = baseenv())
assign("x", 
       envir = e2,
       x <- read.table("2.txt")
)
e3 <- new.env(parent = baseenv())
assign("x", 
       envir = e3,
       x <- read.table("3.txt")
)
e4 <- new.env(parent = baseenv())
assign("x", 
       envir = e4,
       x <- read.table("4.txt")
)
e5 <- new.env(parent = baseenv())
assign("x", 
       envir = e5,
       x <- read.table("5.txt")
)
df <- data.frame(
  rbind(get("x", envir = e1),
        get("x", envir = e2),
        get("x", envir = e3),
        get("x", envir = e4),
        get("x", envir = e5))
)
g1 <- function(x) return(sin(x))
g2 <- function(x) return(cos(x))
g3 <- function(x) return(x^3)
g4 <- function(x) return(x*x)
g5 <- function(x) return(x^2)
plot(c(0,1), c(0,1)) 
for (f in c(g1, g2, g3, g4, g5)) plot(f, 0,1, add=T) 


print(df)