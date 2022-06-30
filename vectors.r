
# The built-in dataframe stackloss describes the operating parameters of a nitric acid plant.
# Use the logical vector air_fltr to select values of nitric acid concentration for which the cooling air flow is less than 60. 
# The acid_subset variable stores the sampled values themselves, 
# and the acid_concs variable stores the frequency table of unique acid concentration values for these sampled data.
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
# https://stepik.org/lesson/121889/step/15

temp_fltr <- stackloss$Water.Temp %in% c(20:25)

mean_stack_20_25 <- mean(stackloss$stack.loss [stackloss$Water.Temp %in% c(20:25)])



# From the suggested three vectors create a dfr dataframe with the specified structure. 
# https://stepik.org/lesson/121889/step/16

vec1 <- 1:6
vec2 <- c('radio', 'newspaper', 'web-page', 'chat', 'tv', 'web-page')
vec3 <- c(0, 0, 1, 1, 0, 1)


 dfr <- data.frame(id = vec1,stringsAsFactors = FALSE)
 dfr$response <- factor(x = vec3, levels = c(0, 1) , labels = c('No','Yes'))
dfr$medium <- vec2



# It is written in the abstract of some course that it will take an average of 2 hours per week to do homework. 
# Surveying 50 randomly selected students, it turned out that they spent an average of 2.4 hours on preparation (standard deviation 1.5 hours). 
# At the same time, the time spent on homework is normally distributed. The value of t-statistics and the level of significance were calculated.
# https://stepik.org/lesson/122051/step/12

# Sample volume
N <- 50

# Time spent by students in preparation
observed_time <- 2.4 # average
observed_s <- 1.5 # standard deviation

# Time stated in course outline
expected_time <- 2

# value of t-statistic
t_val <- ( observed_time - expected_time)/(observed_s/sqrt(N))

# Level of significance
p_val <- 2*(1 - pt(t_val, df = N-1))
