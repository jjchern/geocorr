
<!-- README.md is generated from README.Rmd. Please edit that file -->
About
=====

[![Travis-CI Build Status](https://travis-ci.org/jjchern/geocorr.svg?branch=master)](https://travis-ci.org/jjchern/geocorr)

`geocorr` is an R data package for a set of geographic crosswalk files generated from the Missouri Census Data Center's [**Geo**graphic **Corr**espondence Engine: `MABLE/Geocorr14`](http://mcdc.missouri.edu/websas/geocorr14.html).

So far `geocorr` has six datasets:

-   `geocorr::county2010_to_puma2000`: County10-PUMA00 Crosswalk File
-   `geocorr::county2010_to_puma2012`: County10-PUMA12 Crosswalk File
-   `geocorr::county2014_to_puma2000`: County14-PUMA00 Crosswalk File
-   `geocorr::county2014_to_puma2012`: County14-PUMA12 Crosswalk File
-   `geocorr::county2010_to_puma2000_pop14`: County10-PUMA00 Crosswalk File, with 2014 population as weights
-   `geocorr::county2010_to_puma2012_pop14`: County10-PUMA12 Crosswalk File, with 2014 population as weights

The raw csv files, generated directly from [`MABLE/Geocorr14`](http://mcdc.missouri.edu/websas/geocorr14.html), can be found in the [`\data-raw\` folder](https://github.com/jjchern/geocorr/tree/master/data-raw).

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("jjchern/geocorr")

# To uninstall the package, use:
# remove.packages("geocorr")
```

Usage
=====

``` r
library(dplyr, warn.conflicts = FALSE)
geocorr::county2010_to_puma2000
#> # A tibble: 4,433 × 11
#>    county state puma2k  stab      cntyname PUMA2kName   intptlon  intptlat
#>     <chr> <chr>  <chr> <chr>         <chr>      <chr>      <chr>     <chr>
#> 1   01033    01  00100    AL    Colbert AL    0100100 -87.685151 34.723385
#> 2   01077    01  00100    AL Lauderdale AL    0100100 -87.608752  34.86618
#> 3   01089    01  00200    AL    Madison AL    0100200 -86.593462 34.709032
#> 4   01083    01  00300    AL  Limestone AL    0100300 -86.938983 34.815613
#> 5   01089    01  00300    AL    Madison AL    0100300 -86.634573 34.786639
#> 6   01049    01  00400    AL     DeKalb AL    0100400 -85.817037 34.455111
#> 7   01071    01  00400    AL    Jackson AL    0100400 -85.938553 34.731985
#> 8   01043    01  00500    AL    Cullman AL    0100500 -86.831816 34.162363
#> 9   01095    01  00500    AL   Marshall AL    0100500 -86.293319 34.311975
#> 10  01133    01  00500    AL    Winston AL    0100500 -87.415772 34.163825
#> # ... with 4,423 more rows, and 3 more variables: pop10 <chr>,
#> #   afact <chr>, AFACT2 <chr>
geocorr::county2010_to_puma2012
#> # A tibble: 4,546 × 11
#>    county state puma12  stab      cntyname
#>     <chr> <chr>  <chr> <chr>         <chr>
#> 1   01033    01  00100    AL    Colbert AL
#> 2   01059    01  00100    AL   Franklin AL
#> 3   01077    01  00100    AL Lauderdale AL
#> 4   01093    01  00100    AL     Marion AL
#> 5   01083    01  00200    AL  Limestone AL
#> 6   01089    01  00200    AL    Madison AL
#> 7   01089    01  00301    AL    Madison AL
#> 8   01089    01  00302    AL    Madison AL
#> 9   01049    01  00400    AL     DeKalb AL
#> 10  01071    01  00400    AL    Jackson AL
#> # ... with 4,536 more rows, and 6 more variables: PUMAname <chr>,
#> #   intptlon <chr>, intptlat <chr>, pop10 <chr>, afact <chr>, AFACT2 <chr>
geocorr::county2014_to_puma2000
#> # A tibble: 4,432 × 11
#>    county14 state puma2k  stab     cntyname2 PUMA2kName   intptlon
#>       <chr> <chr>  <chr> <chr>         <chr>      <chr>      <chr>
#> 1     01033    01  00100    AL    Colbert AL    0100100 -87.685151
#> 2     01077    01  00100    AL Lauderdale AL    0100100 -87.608752
#> 3     01089    01  00200    AL    Madison AL    0100200 -86.593462
#> 4     01083    01  00300    AL  Limestone AL    0100300 -86.938983
#> 5     01089    01  00300    AL    Madison AL    0100300 -86.634573
#> 6     01049    01  00400    AL     DeKalb AL    0100400 -85.817037
#> 7     01071    01  00400    AL    Jackson AL    0100400 -85.938553
#> 8     01043    01  00500    AL    Cullman AL    0100500 -86.831816
#> 9     01095    01  00500    AL   Marshall AL    0100500 -86.293319
#> 10    01133    01  00500    AL    Winston AL    0100500 -87.415772
#> # ... with 4,422 more rows, and 4 more variables: intptlat <chr>,
#> #   pop10 <chr>, afact <chr>, AFACT2 <chr>
geocorr::county2014_to_puma2012
#> # A tibble: 4,545 × 11
#>    county14 state puma12  stab     cntyname2
#>       <chr> <chr>  <chr> <chr>         <chr>
#> 1     01033    01  00100    AL    Colbert AL
#> 2     01059    01  00100    AL   Franklin AL
#> 3     01077    01  00100    AL Lauderdale AL
#> 4     01093    01  00100    AL     Marion AL
#> 5     01083    01  00200    AL  Limestone AL
#> 6     01089    01  00200    AL    Madison AL
#> 7     01089    01  00301    AL    Madison AL
#> 8     01089    01  00302    AL    Madison AL
#> 9     01049    01  00400    AL     DeKalb AL
#> 10    01071    01  00400    AL    Jackson AL
#> # ... with 4,535 more rows, and 6 more variables: PUMAname <chr>,
#> #   intptlon <chr>, intptlat <chr>, pop10 <chr>, afact <chr>, AFACT2 <chr>
```

Reference
=========

-   [IPUMA: Description of PUMA](https://usa.ipums.org/usa-action/variables/PUMA)
-   [PSC: Creating County-Level Statistics from Public Use Microdata Areas (PUMAS)](http://www.psc.isr.umich.edu/dis/census/Features/puma2cnty/)
