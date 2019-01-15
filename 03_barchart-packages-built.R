## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
library(ggplot2)
library(readr)
library(here)
## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

## if you use ggplot2, code like this will work:
ggplot(read_csv(here("data","add-on-packages-freqtable.csv")), aes(x = Built, y = n)) +
  geom_col()
last_plot()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

ggsave(here("figs","built-barchart.png"))
## YES overwrite the file that is there now
## that's old output from me (Jenny)
