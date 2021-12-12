# Solution to Day 1 - Version A

library(tidyverse)
library(zoo)

input_data_file <- "input/input_1A"

data <- read_tsv(input_data_file, col_names = c("depth")) |>
    pull(depth)

larger <- sum(
    data < data[2:2000]
)

larger

windowed <- rollsum(data, 3)

windowed_larger <- sum(
    windowed < windowed[2:1998]
)

windowed_larger
