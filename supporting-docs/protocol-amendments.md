# Protocol Amendments

This file records design changes made after the revised preregistration-ready protocol was first added to the repository. It is not a regulatory amendment log; it is a practical audit trail for this self-experiment.

## 2026-05-26 - Final Design Cleanup Before Trial Start

**Timing:** Before the official trial start date and before any randomized-phase data collection.

**Reason:** The final implementation design should stay explicitly unblinded, avoid unnecessary allocation-concealment theater, use the selected private data paths, avoid public participant face photos, and remove low-value consumer hydration-meter measurement.

**Changes**

- Removed friend-held future schedule concealment.
- Confirmed the investigator will generate, record, hash, and lock the unblinded randomized treatment schedule before the randomized phase.
- Set official trial start date to June 7, 2026.
- Set private filled raw CSV storage to `data/raw/private/`.
- Set participant photo storage to `data/raw/photos/`.
- Confirmed participant face photos will not be published; public image-method graphics will use publicly available demo photos.
- Removed consumer hydration-meter readings from the trial.
- Removed the obsolete `future_sequence_known` daily-template field because future-schedule knowledge is not an unblinding event in the final design.

**Effect on estimand and primary analysis:** No change. The primary comparison remains Snail 92 continuation versus Snail 92 omission with no replacement layer, and the primary analysis remains the exact randomization analysis of MBBS under the restricted schedule.

**Effect on interpretation:** Expectancy and anticipation remain limitations because the trial is open-label and the future schedule is not concealed. This is addressed through the fixed schedule, locked analysis plan, expectancy tracking, conservative decision rule, and avoidance of informal mid-trial outcome summaries.
