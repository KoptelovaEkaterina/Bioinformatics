
# The built-in dataframe stackloss describes the operating parameters of a nitric acid plant.
# Use the logical vector air_fltr to select values of nitric acid concentration for which the cooling air flow is less than 60. 
# The acid_subset variable stores the sampled values themselves, and the acid_concs variable stores the frequency table of unique acid concentration values for these sampled data.
# https://stepik.org/lesson/121889/step/14

# logical vector
air_fltr <- stackloss$Acid.Conc. & stackloss$Air.Flow < 60 

# selected values of nitric acid concentration
acid_subset <- stackloss$Acid.Conc.[stackloss$Air.Flow < 60]

# frequencies of unique values
acid_concs <- table(acid_subset)



# Usaging integrated dataframe stackloss
# The logic vector temp_fltr, which has TRUE if the coolant temperature is between 20-25 degrees inclusive. 
# The average ammonia loss (stack.loss) in this temperature range in the variable mean_stack_20_25.

temp_fltr <- stackloss$Water.Temp %in% c(20:25)

mean_stack_20_25 <- mean(stackloss$stack.loss [stackloss$Water.Temp %in% c(20:25)])
