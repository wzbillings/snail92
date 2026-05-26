# Scoring helpers for preregistered outcome derivation.

score_mbbs <- function(dryness_nrs, tightness_nrs, barrier_comfort_nrs) {
  (dryness_nrs + tightness_nrs + (10 - barrier_comfort_nrs)) / 3
}

derive_primary_scores <- function(dat) {
  required <- c("dryness_nrs", "tightness_nrs", "barrier_comfort_nrs")
  missing <- setdiff(required, names(dat))

  if (length(missing) > 0) {
    stop("Cannot derive MBBS. Missing columns: ", paste(missing, collapse = ", "), call. = FALSE)
  }

  dat$mbbs <- score_mbbs(
    dryness_nrs = as.numeric(dat$dryness_nrs),
    tightness_nrs = as.numeric(dat$tightness_nrs),
    barrier_comfort_nrs = as.numeric(dat$barrier_comfort_nrs)
  )

  if ("period_day" %in% names(dat)) {
    dat$transition_day <- dat$period_day %in% c(1, 2)
    dat$analyzable_primary <- dat$period_day %in% 3:6 & !is.na(dat$mbbs)
  }

  dat
}

summarise_period_scores <- function(dat) {
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("Package 'dplyr' is required for period summaries.", call. = FALSE)
  }

  dat |>
    dplyr::filter(.data$analyzable_primary %in% TRUE) |>
    dplyr::group_by(.data$period_num, .data$assigned_condition) |>
    dplyr::summarise(
      period_mbbs_mean = mean(.data$mbbs, na.rm = TRUE),
      period_dryness_mean = mean(.data$dryness_nrs, na.rm = TRUE),
      period_tightness_mean = mean(.data$tightness_nrs, na.rm = TRUE),
      period_comfort_mean = mean(.data$barrier_comfort_nrs, na.rm = TRUE),
      period_redness_mean = mean(.data$redness_nrs, na.rm = TRUE),
      period_burning_mean = mean(.data$burning_nrs, na.rm = TRUE),
      period_stinging_mean = mean(.data$stinging_nrs, na.rm = TRUE),
      period_flaking_mean = mean(.data$flaking_score, na.rm = TRUE),
      period_rescue_count = sum(.data$rescue_cleanser_used %in% TRUE, na.rm = TRUE),
      period_retinol_pause_count = sum(.data$retinol_paused_safety %in% TRUE, na.rm = TRUE),
      .groups = "drop"
    )
}

