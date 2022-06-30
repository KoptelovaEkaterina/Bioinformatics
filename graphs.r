# The USmelanoma dataframe (package HSAUR3) contains data on white male malignant melanoma mortality from 1950-1969 in various US states (except Hawaii). 
# Plotting the kernel density of mortality using "darkorange" color. 
# (The package and data are already in the USmelanoma variable)
# https://stepik.org/lesson/122049/step/14

gg_mel <- ggplot(USmelanoma, aes(x=mortality)) +
+ geom_density(fill="darkorange", colour="black") + theme_dark()

#  Histograms of the distribution of median per capita income (in US dollars) in countries located in different continents (Leinhardt data from the carData package). 
# Using a class step width of 250. 
# (The package and the data are already in the Leinhardt variable)
# https://stepik.org/lesson/122049/step/16

gg_Leinhardt <- ggplot(Leinhardt, aes(x=income)) + 
+geom_histogram(binwidth = 250, aes(fill=region)) +
+ facet_wrap(~region,nrow=4) + theme_light()


# Construction of a boxplot of malignant melanoma mortality depending on whether or not the state is on the coast.
# https://stepik.org/lesson/122050/step/13

gg_box <- ggplot(data=USmelanoma, aes(x = ocean, y = mortality)) + geom_boxplot(aes(fill = ocean)) +
+ scale_x_discrete(labels = c('Нет', 'Да')) + labs(x = 'Океан', y = 'Смертность на 1 млн. чел.') +
+ scale_fill_brewer(palette = "Dark2") + theme(legend.position = "none")
