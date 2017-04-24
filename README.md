
<!-- README.md is generated from README.Rmd. Please edit that file -->
About
=====

[![Travis-CI Build Status](https://travis-ci.org/jjchern/geocorr.svg?branch=master)](https://travis-ci.org/jjchern/geocorr)

`geocorr` is an R data package for a set of geographic crosswalk files generated from the Missouri Census Data Center's [**Geo**graphic **Corr**espondence Engine: `MABLE/Geocorr14`](http://mcdc.missouri.edu/websas/geocorr14.html).

So far `geocorr` has nine datasets:

-   `geocorr::county2010_to_puma2000`: County10-PUMA00 Crosswalk File
-   `geocorr::county2010_to_puma2012`: County10-PUMA12 Crosswalk File
-   `geocorr::county2014_to_puma2000`: County14-PUMA00 Crosswalk File
-   `geocorr::county2014_to_puma2012`: County14-PUMA12 Crosswalk File
-   `geocorr::county2010_to_puma2000_pop14`: County10-PUMA00 Crosswalk File, with 2014 population as weights
-   `geocorr::county2010_to_puma2012_pop14`: County10-PUMA12 Crosswalk File, with 2014 population as weights
-   `geocorr::puma2000_to_puma2012`: PUMA00-PUMA12 Crosswalk File
-   `geocorr::zcta2010_to_puma2000`: PUMA00-PUMA12 Crosswalk File
-   `geocorr::zcta2010_to_puma2012`: PUMA00-PUMA12 Crosswalk File

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
geocorr::county2010_to_puma2000_pop14
#> # A tibble: 4,433 × 11
#>    county state puma2k  stab    cntyname PUMA2kName   intptlon  intptlat
#>     <chr> <chr>  <chr> <chr>       <chr>      <chr>      <chr>     <chr>
#> 1   01001    01  02000    AL  Autauga AL    0102000 -86.494186 32.500389
#> 2   01003    01  02400    AL  Baldwin AL    0102400 -87.762466 30.548923
#> 3   01005    01  01800    AL  Barbour AL    0101800 -85.309929 31.844037
#> 4   01007    01  01500    AL     Bibb AL    0101500 -87.127656 33.030921
#> 5   01009    01  00800    AL   Blount AL    0100800 -86.591401 33.955244
#> 6   01011    01  01800    AL  Bullock AL    0101800 -85.701197 32.116327
#> 7   01013    01  01800    AL   Butler AL    0101800 -86.653511 31.773539
#> 8   01015    01  01100    AL  Calhoun AL    0101100 -85.913387 33.585796
#> 9   01015    01  01200    AL  Calhoun AL    0101200 -85.819401 33.725465
#> 10  01017    01  01600    AL Chambers AL    0101600 -85.266519  32.86044
#> # ... with 4,423 more rows, and 3 more variables: pop14 <chr>,
#> #   afact <chr>, AFACT2 <chr>
geocorr::county2010_to_puma2012_pop14
#> # A tibble: 4,546 × 11
#>    county state puma12  stab    cntyname
#>     <chr> <chr>  <chr> <chr>       <chr>
#> 1   01001    01  02100    AL  Autauga AL
#> 2   01003    01  02600    AL  Baldwin AL
#> 3   01005    01  02400    AL  Barbour AL
#> 4   01007    01  01700    AL     Bibb AL
#> 5   01009    01  00800    AL   Blount AL
#> 6   01011    01  02400    AL  Bullock AL
#> 7   01013    01  02300    AL   Butler AL
#> 8   01015    01  01100    AL  Calhoun AL
#> 9   01017    01  01800    AL Chambers AL
#> 10  01019    01  01000    AL Cherokee AL
#> # ... with 4,536 more rows, and 6 more variables: PUMAname <chr>,
#> #   intptlon <chr>, intptlat <chr>, pop14 <chr>, afact <chr>, AFACT2 <chr>
geocorr::puma2000_to_puma2012
#> # A tibble: 4,444 × 11
#>    state puma2k puma12  stab
#>    <chr>  <chr>  <chr> <chr>
#> 1     01  00100  00100    AL
#> 2     01  00200  00200    AL
#> 3     01  00200  00301    AL
#> 4     01  00200  00302    AL
#> 5     01  00200  00500    AL
#> 6     01  00300  00200    AL
#> 7     01  00300  00301    AL
#> 8     01  00300  00302    AL
#> 9     01  00300  00500    AL
#> 10    01  00400  00400    AL
#> # ... with 4,434 more rows, and 7 more variables: PUMAname <chr>,
#> #   PUMA2kName <chr>, intptlon <chr>, intptlat <chr>, pop10 <chr>,
#> #   afact <chr>, AFACT2 <chr>
geocorr::zcta2010_to_puma2000
#> # A tibble: 44,071 × 11
#>    zcta5 state puma2k  stab            zipname PUMA2kName   intptlon
#>    <chr> <chr>  <chr> <chr>              <chr>      <chr>      <chr>
#> 1  01001    25  01800    MA    Agawam Town, MA    2501800  -72.62239
#> 2  01002    25  00200    MA Amherst Center, MA    2500200 -72.449974
#> 3  01002    25  01600    MA Amherst Center, MA    2501600 -72.515165
#> 4  01003    25  01600    MA Amherst Center, MA    2501600 -72.524677
#> 5  01005    25  01500    MA          Barre, MA    2501500 -72.110496
#> 6  01007    25  02000    MA    Belchertown, MA    2502000 -72.409222
#> 7  01008    25  00200    MA      Blandford, MA    2500200 -72.938224
#> 8  01009    25  02000    MA    Palmer Town, MA    2502000 -72.341702
#> 9  01010    25  01500    MA      Brimfield, MA    2501500 -72.202212
#> 10 01010    25  02100    MA      Brimfield, MA    2502100  -72.15364
#> # ... with 44,061 more rows, and 4 more variables: intptlat <chr>,
#> #   pop10 <chr>, afact <chr>, AFACT2 <chr>
geocorr::zcta2010_to_puma2012
#> # A tibble: 44,493 × 11
#>    zcta5 state puma12  stab            zipname
#>    <chr> <chr>  <chr> <chr>              <chr>
#> 1  01001    25  01901    MA    Agawam Town, MA
#> 2  01002    25  00200    MA Amherst Center, MA
#> 3  01003    25  00200    MA Amherst Center, MA
#> 4  01005    25  00302    MA          Barre, MA
#> 5  01007    25  01600    MA    Belchertown, MA
#> 6  01008    25  01600    MA      Blandford, MA
#> 7  01009    25  01600    MA    Palmer Town, MA
#> 8  01010    25  01600    MA      Brimfield, MA
#> 9  01011    25  00200    MA        Chester, MA
#> 10 01011    25  01600    MA        Chester, MA
#> # ... with 44,483 more rows, and 6 more variables: PUMAname <chr>,
#> #   intptlon <chr>, intptlat <chr>, pop10 <chr>, afact <chr>, AFACT2 <chr>
```

Reference
=========

-   [IPUMA: Description of PUMA](https://usa.ipums.org/usa-action/variables/PUMA)
-   [PSC: Creating County-Level Statistics from Public Use Microdata Areas (PUMAS)](http://www.psc.isr.umich.edu/dis/census/Features/puma2cnty/)
