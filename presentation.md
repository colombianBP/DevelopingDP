

My web application
========================================================

By: Nicolás Hoyos Bertín

Date: 7/15/2021

Analyzing the mtcars dataset
========================================================

This application performs a simple plot of two variables from the 'mtcars' dataset, let's see a little summary of owr data


```r
head(mtcars,n=3L)
```

```
               mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710    22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
```

A sample plot to be produced with the web application
========================================================



```r
plot(mtcars$mpg,mtcars$cyl)
```

![plot of chunk unnamed-chunk-2](presentation-figure/unnamed-chunk-2-1.png)


Objective
========================================================

This tool allows for a fast and easy way to visualize data from this particular data set, to look for relationships and as a complete and integral way to perform preliminary data analysis


Issues and technicalities
========================================================

As hard limits had to be set for the axes of the plot, the data had to be normalized, this was done by dividing each value by the maximum and multiplying by 100. it is really time consuming to do this with a large dataset, as it is necessary to translate from the data descriptions to the actual name of the variable in the dataframe, and this process has to be made by hand. Thank you very much for your attention.

