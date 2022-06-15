# Bioinformatics
## creative work

Sequences in FASTA format consist of a one-line description, and contain the sequence itself on the next line.

In this example, we take columns 2 and 14 from the way_to file/file, separating them with a new line and put them into the way_to_put/file.

We had file with few columns. 


|$1|$2| Some information|$14|
|--|---|--|--|
|.. | 0 |  🐉 .......   | ATCGATCGAA
|.. |  1|   🐉.......    | CCTTGAATGG
|.. |   2 | 🐉 .......      |  TCATGTGATT
|.. |3  |  🐉 .......     |TCCCTCCAGT

```
awk '{print $2 "\n" $14 "\n"}' way_to file/file > way_to_put/file
```

Than we took 2 and 14 and made one file

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
