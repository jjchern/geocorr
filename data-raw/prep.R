library(dplyr, warn.conflicts = FALSE)

county2010_to_puma2000 = readr::read_csv("data-raw/county2010_to_puma2000.csv")[-1,]
labelled::var_label(county2010_to_puma2000) = readr::read_csv("data-raw/county2010_to_puma2000.csv")[1,]

county2010_to_puma2012 = readr::read_csv("data-raw/county2010_to_puma2012.csv")[-1,]
labelled::var_label(county2010_to_puma2012) = readr::read_csv("data-raw/county2010_to_puma2012.csv")[1,]

county2014_to_puma2000 = readr::read_csv("data-raw/county2014_to_puma2000.csv")[-1,]
labelled::var_label(county2014_to_puma2000) = readr::read_csv("data-raw/county2014_to_puma2000.csv")[1,]

county2014_to_puma2012 = readr::read_csv("data-raw/county2014_to_puma2012.csv")[-1,]
labelled::var_label(county2014_to_puma2012) = readr::read_csv("data-raw/county2014_to_puma2012.csv")[1,]

county2010_to_puma2000_pop14 = readr::read_csv("data-raw/county2010_to_puma2000_pop14.csv")[-1,]
labelled::var_label(county2010_to_puma2000_pop14) = readr::read_csv("data-raw/county2010_to_puma2000_pop14.csv")[1,]

county2010_to_puma2012_pop14 = readr::read_csv("data-raw/county2010_to_puma2012_pop14.csv")[-1,]
labelled::var_label(county2010_to_puma2012_pop14) = readr::read_csv("data-raw/county2010_to_puma2012_pop14.csv")[1,]

puma2000_to_puma2012 = readr::read_csv("data-raw/puma2000_to_puma2012.csv")[-1,]
labelled::var_label(puma2000_to_puma2012) = readr::read_csv("data-raw/puma2000_to_puma2012.csv")[1,]

zcta2010_to_puma2000 = readr::read_csv("data-raw/zcta2010_to_puma2000.csv")[-1,]
labelled::var_label(zcta2010_to_puma2000) = readr::read_csv("data-raw/zcta2010_to_puma2000.csv")[1,]

zcta2010_to_puma2012 = readr::read_csv("data-raw/zcta2010_to_puma2012.csv")[-1,]
labelled::var_label(zcta2010_to_puma2012) = readr::read_csv("data-raw/zcta2010_to_puma2012.csv")[1,]

devtools::use_data(
        county2010_to_puma2000,
        county2010_to_puma2012,
        county2014_to_puma2000,
        county2014_to_puma2012,
        county2010_to_puma2000_pop14,
        county2010_to_puma2012_pop14,
        puma2000_to_puma2012,
        zcta2010_to_puma2000,
        zcta2010_to_puma2012,
        overwrite = TRUE
)
