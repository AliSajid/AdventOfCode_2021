# Setup script

library(purrr)

create_dir <- function(dirname) {
    if (!dir.exists(dirname)) {
        dir.create(dirname)
    }
}

input_dir <- "input"
output_dir <- "output"

dirs <- c(input_dir, output_dir)

dirs |>
    walk(~ create_dir(.x))

