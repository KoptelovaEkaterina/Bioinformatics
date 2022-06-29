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


## Using ggplot R

One of the solutions to the R course from the stepic platform.

The USmelanoma dataframe (package HSAUR3) contains data on white male malignant melanoma mortality from 1950-1969 in various US states (except Hawaii). 
Plotting the kernel density of mortality using "darkorange" color.

![Github](https://ucarecdn.com/1dc99bf2-89b3-4c14-967c-bd30d363219e/)

Graphics code: 

```r
gg_mel <- ggplot(USmelanoma, aes(x=mortality)) +
+ geom_density(fill="darkorange", colour="black") + theme_dark()
```
