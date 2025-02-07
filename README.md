# College Graduation Rate Analysis  

## Overview  
This project explores the relationship between full-time enrollment and graduation rates in colleges. It investigates whether full-time enrollment affects graduation rates and whether this relationship differs for public and private institutions or for more selective schools.  

## Dataset  
The analysis is based on the `College` dataset from the **ISLR2** package in R, which contains information on U.S. colleges, including graduation rates, enrollment, and selectivity.  

## Analysis Approach  
- A scatter plot is created to visualize the relationship between full-time enrollment (FTE) and graduation rates (`Grad.Rate`), with color distinctions for private and public institutions.  
- A regression model is used to determine the statistical significance of full-time enrollment (`FTE`) in predicting graduation rates.  
- The model also considers whether the institution is public or private (`Private`) and the percentage of students in the top 10% of their high school class (`Top10perc`).  

## Dependencies  
Before running the script, ensure you have the following R packages installed:  

```r
install.packages("tidyverse")
install.packages("ISLR2")
