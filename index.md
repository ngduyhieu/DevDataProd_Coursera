---
title       : Solving the Quadratic Equation
subtitle    : Simple yet Involved
author      : Hieu Duy Nguyen (Hill)
job         : Scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: [libraries/nvd3]}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Quadratic Equation: $~~ ax^2 + bx + c = 0$

<ol>
<li> Long time no see you high school textbook? </li>
<li> Is the equation that easy to solve? 
    <ul>
        <li>   How many scenarios can we encounter?  </li>
        <li>   How many solutions for each case?  </li>
    </ul>
</li>
<li> Fear not! The shiny app <font color="red" size="6"> SolQuadEq </font> is here to save the day!  </li>
<li> Features in this app:
    <ul>
        <li>   Robustness: covering all possible scenarios  </li>
        <li>   Accuracy: exact solution(s) (if existing)  </li>
        <li>   <font color="gray" size="4"> ... at least when you expect solutions to be real numbers only</font>  </li>
    </ul>
</li>
</ol>

--- .class #id 

## And now the familiar (but long forgotten) flowchart

Courtesy to: https://conceptdraw.com/a232c3/preview

<center> <img src="solQuadEqAlgo.png" alt="QuadEqAlgo" height="500" width="600"> </center>

--- .class #id

## Example: Generate a, b, c, and print the result(s)

The app link is here: https://ngduyhieu.shinyapps.io/solvingQuadEq


```r
set.seed(1234)
df <- data.frame(a = rnorm(1,0,1), b = rnorm(1,0,1), c = rnorm(1,0,1))
df
```

```
##           a         b        c
## 1 -1.207066 0.2774292 1.084441
```

You want to solve the equation <font color="red"> [-1.207] $x^2 +$ [0.277] $x +$ [1.084] $= 0$ </font>.

The hidden code can be found here: https://github.com/ngduyhieu/DevDataProd_Coursera


```
## [1] "The equation has 2 real solutions"
```

```
## [1] "The solutions are:  1.0697 and  -0.8399"
```


--- .class #id 
<div align="center"; style="margin:200px 0 0 0;">
<font color="red"; size="13"> Thank you </font>
</br> </br>
<font color="blue"> Please support my world-changing :) app </font>
</div>

