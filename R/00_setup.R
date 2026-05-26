# Project setup helpers for the Snail 92 n-of-1 trial.

required_packages <- c(
  "tidyverse",
  "lubridate",
  "readr",
  "here",
  "janitor",
  "quarto",
  "knitr",
  "rmarkdown",
  "broom",
  "ggplot2"
)

check_required_packages <- function(packages = required_packages) {
  missing <- packages[!vapply(packages, requireNamespace, logical(1), quietly = TRUE)]

  if (length(missing) > 0) {
    message(
      "Missing required packages: ",
      paste(missing, collapse = ", "),
      "\nInstall them manually before running the full analysis."
    )
    return(invisible(FALSE))
  }

  message("All required packages are available.")
  invisible(TRUE)
}

load_required_packages <- function(packages = required_packages) {
  ok <- check_required_packages(packages)
  if (!isTRUE(ok)) {
    stop("Install missing packages before loading the project analysis environment.", call. = FALSE)
  }

  invisible(lapply(packages, library, character.only = TRUE))
}
