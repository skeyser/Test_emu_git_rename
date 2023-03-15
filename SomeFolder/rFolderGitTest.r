#Some R Code
library(dplyr)

X <- matrix(c(2,1,2,3), nrow = 2)

#Do some work
Y <- solve(X)

#Do some more work
Z <- det(X)