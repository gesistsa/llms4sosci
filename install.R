# install.R — Binder installation script for the LLM API tutorial

install.packages("quarto")

# Core packages that are likely to be used interactively
pkgs <- c(
  "httr",
  "jsonlite",
  "ggplot2",
  "lubridate",
  "dplyr",
  "tidyr",
  "tidytext",
  "stopwords"
)

to_install <- setdiff(pkgs, rownames(installed.packages()))
if (length(to_install) > 0) {
  install.packages(to_install)
}

cat("Environment setup complete. You can now render the .qmd file.\n")
