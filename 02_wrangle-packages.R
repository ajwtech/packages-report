## remember to restart R here!
library(tidyverse)
library(here)
library(readr)
## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write_csv(readr::read_csv(here("data","installed-packages.csv")) %>% filter(is.na(Priority)) %>% select(Package, Built), here("data","add-on-packages.csv"))


## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write_csv(here("data","add-on-packages-freqtable.csv"), readr::read_csv( here("data","add-on-packages.csv")) %>% count(Built) %>% mutate(prop = n / sum(n)))

## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
