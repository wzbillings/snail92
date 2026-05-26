local({
  r_minor <- sub("\\..*$", "", R.version$minor)
  r_version <- paste(R.version$major, r_minor, sep = ".")
  platform <- R.version$platform
  roots <- c("windows", "macos", "linux")
  candidates <- file.path(
    getwd(),
    "renv",
    "library",
    roots,
    paste0("R-", r_version),
    platform
  )
  renv_lib <- candidates[dir.exists(candidates)][1]

  if (!is.na(renv_lib)) {
    .libPaths(c(normalizePath(renv_lib, winslash = "/", mustWork = TRUE), .libPaths()))
  }
})
