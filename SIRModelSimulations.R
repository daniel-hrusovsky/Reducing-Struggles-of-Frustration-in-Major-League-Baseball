library(phaseR)
library(readxl)
library(deSolve)


# Define system
SIR <- function(t, y, parameters) {
  bd <- y[1]
  bs <- y[2]
  pd <- y[3]
  ps <- y[4]
  
  a  <- parameters[1]
  b <- parameters[2]
  c <- parameters[3]
  d <- parameters[4]
  
  dy    <- numeric(4)
  dy[1] <- -a*bd*pd + c*bs
  dy[2] <- a*bd*pd - c*bs
  dy[3] <- -b*bd*pd + d*ps
  dy[4] <- b*bd*pd - d*ps
  list(dy)
}

# Use built-in numerical methods to approximate solution
# Begin by specifying initial conditions and parameter values
time <- seq(0, 30, by = 1)
init <- c(50, 340, 100, 290)
params <- c(0.226, 0.117, 0.312, 0.3257)
soln <- ode(init, time, SIR, params)
names <- c("Dominant Hitters", "Struggling Hitters", "Dominant Pitchers", "Struggling Pitchers")
matplot.0D(soln, xlab = "Time", ylab = "Population of Hitters/Batters", 
           main = "Spread of Struggle", col = c("blue", "red", "green4","purple"), legend = FALSE)

legend("topleft",
       legend = names,
      col = c("blue", "red", "green4", "purple"),
       lty = 1,
       cex = 0.8,
       xpd = TRUE,
       inset = c(0.75, -0.1))
