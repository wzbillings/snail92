# Analysis helpers aligned with the revised preregistration-ready protocol.

has_long_run <- function(x, max_run = 2) {
  any(rle(x)$lengths > max_run)
}

is_strict_alternation <- function(x) {
  all(x[-1] != x[-length(x)])
}

restricted_condition_sequences <- function(n_periods = 10, max_run = 2) {
  if (n_periods %% 2 != 0) {
    stop("n_periods must be even for balanced continuation/omission sequences.", call. = FALSE)
  }

  seqs <- lapply(combn(n_periods, n_periods / 2, simplify = FALSE), function(idx) {
    x <- rep("omission", n_periods)
    x[idx] <- "continuation"
    x
  })

  seqs <- Filter(function(x) !has_long_run(x, max_run), seqs)
  Filter(function(x) !is_strict_alternation(x), seqs)
}

calc_condition_delta <- function(dat, outcome = "mbbs", condition_col = "assigned_condition") {
  required <- c(outcome, condition_col)
  missing <- setdiff(required, names(dat))
  if (length(missing) > 0) {
    stop("Missing columns: ", paste(missing, collapse = ", "), call. = FALSE)
  }

  means <- tapply(dat[[outcome]], dat[[condition_col]], mean, na.rm = TRUE)
  if (!all(c("omission", "continuation") %in% names(means))) {
    stop("Both 'omission' and 'continuation' conditions are required.", call. = FALSE)
  }

  unname(means[["omission"]] - means[["continuation"]])
}

primary_randomization_analysis <- function(dat, outcome = "mbbs", n_periods = 10) {
  required <- c(
    "phase", "period_num", "assigned_condition",
    "analyzable_primary", "valid_period_primary", outcome
  )
  missing <- setdiff(required, names(dat))
  if (length(missing) > 0) {
    stop("Missing columns: ", paste(missing, collapse = ", "), call. = FALSE)
  }

  primary_dat <- dat[
    dat$phase == "randomized" &
      dat$analyzable_primary %in% TRUE &
      dat$valid_period_primary %in% TRUE &
      !is.na(dat[[outcome]]),
    ,
    drop = FALSE
  ]

  obs_stat <- calc_condition_delta(primary_dat, outcome = outcome)
  all_seq <- restricted_condition_sequences(n_periods = n_periods)

  calc_stat_for_seq <- function(seq_vec) {
    perm_dat <- primary_dat
    perm_dat$perm_condition <- seq_vec[match(perm_dat$period_num, seq_len(n_periods))]
    calc_condition_delta(perm_dat, outcome = outcome, condition_col = "perm_condition")
  }

  null_stats <- vapply(all_seq, calc_stat_for_seq, numeric(1))

  data.frame(
    obs_delta = obs_stat,
    p_one_sided_benefit = mean(null_stats >= obs_stat),
    p_two_sided = mean(abs(null_stats) >= abs(obs_stat)),
    n_reference_sequences = length(null_stats)
  )
}

run_sensitivity_analysis <- function(dat, period_days = 3:6, outcome = "mbbs") {
  dat$analyzable_primary <- dat$period_day %in% period_days & !is.na(dat[[outcome]])
  primary_randomization_analysis(dat, outcome = outcome)
}
