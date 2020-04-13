
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SUSDeveloper

<!-- badges: start -->

<!-- badges: end -->

The goal of SUSDeveloper package is to provide package dcependencies and
datasets to MSSI researchers.

The packages dependencies currently included in the SUSDeveloper package
are:  
  
\- cancensus  
\- dodgr  
\- osmdata  
\- reticulate  
\-
spocc  

## Installation

<!-- You can install the released version of SUSDeveloper from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("MSSI")
``` -->

You can install the development version of SUSDeveloper from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("anooshpoorian/SUSDeveloper")
```

## Usage

You can begin using the package by displaying all the data available to
you via the display\_dataset\_list() function, which will report all the
datasets available to you through the package.

Additionally, in order to save data combinations and queries, you can
use save objects to the cloud using the data\_upload(obj, name)
function. Anyone is then able to retrieve this object using the
data\_retrieve(name) function.

You can also add any data you upload to the master dataset list through
the update\_datalist(name, description) function.

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(MSSI)
## basic example code
```
