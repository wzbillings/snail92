# Plotting helpers for descriptive trial displays.

plot_outcome_timeseries <- function(dat, outcome = "mbbs") {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package 'ggplot2' is required for plotting.", call. = FALSE)
  }

  ggplot2::ggplot(dat, ggplot2::aes(x = as.Date(.data$date), y = .data[[outcome]])) +
    ggplot2::geom_line(color = "grey45", linewidth = 0.4) +
    ggplot2::geom_point(ggplot2::aes(color = .data$assigned_condition), size = 1.8) +
    ggplot2::labs(x = NULL, y = outcome, color = "Assigned condition") +
    ggplot2::theme_minimal()
}

plot_period_means <- function(period_dat, outcome = "period_mbbs_mean") {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package 'ggplot2' is required for plotting.", call. = FALSE)
  }

  ggplot2::ggplot(
    period_dat,
    ggplot2::aes(x = factor(.data$period_num), y = .data[[outcome]], fill = .data$assigned_condition)
  ) +
    ggplot2::geom_col(width = 0.7) +
    ggplot2::labs(x = "Period", y = outcome, fill = "Assigned condition") +
    ggplot2::theme_minimal()
}

plot_missingness_summary <- function(missingness_dat) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package 'ggplot2' is required for plotting.", call. = FALSE)
  }

  ggplot2::ggplot(
    missingness_dat,
    ggplot2::aes(x = reorder(.data$variable, .data$n_missing), y = .data$n_missing)
  ) +
    ggplot2::geom_col(fill = "grey35") +
    ggplot2::coord_flip() +
    ggplot2::labs(x = NULL, y = "Missing values") +
    ggplot2::theme_minimal()
}

