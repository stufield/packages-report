## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
apt_freqtable <- here::here("data", "add-on-packages-freqtable.csv") %>%
  readr::read_csv()


## if you use ggplot2, code like this will work:
p <- ggplot2::ggplot(apt_freqtable, ggplot2::aes(x = Built, y = n)) +
  ggplot2::geom_col()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path
ggplot2::ggsave(p, filename = here::here("figs", "built-barchart.png"))

## YES overwrite the file that is there now
## that's old output from me (Jenny)
