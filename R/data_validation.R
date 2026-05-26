# Validation helpers for diary and metadata files.

expected_daily_fields <- c(
  "date", "day_num", "phase", "period_num", "period_day",
  "assigned_condition", "actual_condition", "snail92_used",
  "adherence_primary", "valid_period_primary", "transition_day",
  "analyzable_primary", "dryness_nrs", "tightness_nrs",
  "barrier_comfort_nrs", "mbbs", "flaking_score", "redness_nrs",
  "burning_nrs", "stinging_nrs", "itching_nrs", "irritation_nrs",
  "new_inflam_lesions_simple", "active_painful_lesion_binary",
  "retinol_scheduled", "retinol_used", "retinol_paused_safety",
  "cleanser_type", "rescue_cleanser_used", "toner_used",
  "azelaic_used", "lipikar_am_used", "lipikar_pm_used",
  "sunscreen_am_used", "sunscreen_reapplied", "outdoor_minutes",
  "perceived_condition", "condition_confidence",
  "expect_skin_tomorrow_nrs", "photo_scheduled", "photo_taken",
  "safety_event_binary", "protocol_deviation_binary"
)

validate_required_columns <- function(dat, required = expected_daily_fields) {
  missing <- setdiff(required, names(dat))
  extra <- setdiff(names(dat), required)

  list(
    ok = length(missing) == 0,
    missing = missing,
    extra = extra
  )
}

validate_date_fields <- function(dat, date_col = "date") {
  if (!date_col %in% names(dat)) {
    return(list(ok = FALSE, issue = "Date column is missing."))
  }

  parsed_dates <- as.Date(dat[[date_col]])
  list(
    ok = !any(is.na(parsed_dates)),
    missing_or_invalid_dates = which(is.na(parsed_dates)),
    duplicate_dates = which(duplicated(parsed_dates))
  )
}

validate_condition_values <- function(dat) {
  allowed <- c("continuation", "omission", NA)
  cols <- intersect(c("assigned_condition", "actual_condition"), names(dat))

  invalid <- lapply(cols, function(col) {
    unique(dat[[col]][!dat[[col]] %in% allowed])
  })
  names(invalid) <- cols

  list(
    ok = all(lengths(invalid) == 0),
    invalid_values = invalid
  )
}

validate_numeric_range <- function(dat, columns, min_value = 0, max_value = 10) {
  present <- intersect(columns, names(dat))

  issues <- lapply(present, function(col) {
    x <- suppressWarnings(as.numeric(dat[[col]]))
    which(!is.na(x) & (x < min_value | x > max_value))
  })
  names(issues) <- present

  list(
    ok = all(lengths(issues) == 0),
    out_of_range_rows = issues
  )
}

summarise_missingness <- function(dat) {
  data.frame(
    variable = names(dat),
    n_missing = vapply(dat, function(x) sum(is.na(x) | x == ""), integer(1)),
    n_rows = nrow(dat),
    row.names = NULL
  )
}

validate_daily_log <- function(dat) {
  nrs_cols <- c(
    "dryness_nrs", "tightness_nrs", "barrier_comfort_nrs",
    "redness_nrs", "burning_nrs", "stinging_nrs", "itching_nrs",
    "irritation_nrs", "condition_confidence", "expect_skin_tomorrow_nrs"
  )

  list(
    required_columns = validate_required_columns(dat),
    dates = validate_date_fields(dat),
    conditions = validate_condition_values(dat),
    nrs_ranges = validate_numeric_range(dat, nrs_cols, 0, 10),
    missingness = summarise_missingness(dat)
  )
}

