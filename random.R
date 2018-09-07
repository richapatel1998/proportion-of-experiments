# Generate 3 random numbers uniformly distributed between [0, 1]
u <- runif (3)
# If u is smaller than 0.5 we have a tail , and head otherwise .
x <- ifelse (u < 0.5 , 'T', 'H')
print (x)
print (sum(x == 'T')) # print the number of tails
n <- 100000 # Run 1000 experiments
# Initialize a vector of length n to store the number of tails
nTails <- rep(NA , n)

for(i in 1:n){
  u <- runif (3)
  x <- ifelse (u < 0.5 , 'T', 'H')
  nTails[i] <- (sum(x == 'T')) 
}
### Fill in code until here ###
# Print a few numbers
head ( nTails )
# Calculate the proportion of experiments with >= 2 tails
mean ( nTails >= 2)
