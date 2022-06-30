# Bioinformatics
## creative work AWK

Sequences in FASTA format consist of a one-line description, and contain the sequence itself on the next line.

In this example, we take columns 2 and 14 from the way_to file/file, separating them with a new line and put them into the way_to_put/file.

We had file with few columns. 


|$1|$2| Some information|$14|
|--|---|--|--|
|.. | 0 |  🐉 .......   | ATCGATCGAA
|.. |  1|   🐉.......    | CCTTGAATGG
|.. |   2 | 🐉 .......      |  TCATGTGATT
|.. |3  |  🐉 .......     |TCCCTCCAGT

```awk
awk '{print $2 "\n" $14 "\n"}' way_to file/file > way_to_put/file
```

Than we took 2 and 14 and made one file.fasta

|0|
|--|
|ATCGATCGAA|
|  |
|1|
|CCTTGAATGG|
|  |
|2|
|TCATGTGATT|
|  |
|3|
|TCCCTCCAGT|


## Using ggplot2 R

A few solutions to the R course from the stepik platform.

🐉 The USmelanoma dataframe (package HSAUR3) contains data on white male malignant melanoma mortality from 1950-1969 in various US states (except Hawaii). 
Plotting the kernel density of mortality using "darkorange" color. 
(The package and data are already in the USmelanoma variable)
https://stepik.org/lesson/122049/step/14

![Github](https://ucarecdn.com/1dc99bf2-89b3-4c14-967c-bd30d363219e/)

Graphics code: 

```r
gg_mel <- ggplot(USmelanoma, aes(x=mortality)) +
+ geom_density(fill="darkorange", colour="black") + theme_dark()
```


🐉 Histograms of the distribution of median per capita income (in US dollars) in countries located in different continents (Leinhardt data from the carData package). Using a class step width of 250. 
(The package and the data are already in the Leinhardt variable)
https://stepik.org/lesson/122049/step/16

![Github](https://ucarecdn.com/c76c6089-b32c-4d84-af2d-9914538719c9/)

Graphics code: 

```r
gg_Leinhardt <- ggplot(Leinhardt, aes(x=income)) + 
+ geom_histogram(binwidth = 250, aes(fill=region)) +
+ facet_wrap(~region,nrow=4) + theme_light()
```



🐉 Change the orange graph shown above to get the nuclear density of malignant melanoma mortality depending on whether the state is on the coast or not.
https://stepik.org/lesson/122049/step/15

![Github](https://ucarecdn.com/afd0a2c4-645f-4c93-be1c-e336fbb2eb35/)

Graphics code: 

```r
gg_mel_2 <- ggplot(USmelanoma, aes(x=mortality)) +
+ geom_density(aes(fill=ocean, alpha=0.5)) + theme_bw()
```
