# Preregistration-ready protocol: n-of-1 trial of COSRX Advanced Snail 92 continuation versus removal

## 1. Protocol synopsis

**Title.** Randomized n-of-1 discontinuation trial of COSRX Advanced Snail 92 All In One Cream within a stable nighttime skincare routine.

**Objective.** Estimate whether removing COSRX Advanced Snail 92 All In One Cream from the current routine worsens personal skin outcomes enough to justify continuing the product.

**Primary causal question.** Can Snail 92 be removed from the routine without worsening skin outcomes, while all other routine components are held stable?

**Primary estimand.** The treatment-policy effect of **Snail 92 continuation** versus **Snail 92 omission with no replacement layer**, with the rest of the routine held constant and with prespecified safety rescues allowed as part of real-world use.

**Design.** Full-face, randomized, open-label, multiple-crossover switchback discontinuation trial.

**Conditions.**

- **Continuation condition:** usual nighttime routine including COSRX Snail 92.
- **Omission condition:** identical routine except the Snail 92 step is skipped; no replacement moisturizer, gel, placebo, or hydrating layer is added.

This fixes the main causal flaw identified in the stress test: the earlier draft risked answering “Snail 92 versus another hydrating product,” not “Snail 92 versus removing the product.” The review explicitly identified that as the central estimand mismatch.

**Trial duration.**

- **Run-in/stabilization:** 21 days.
- **Randomized phase:** 10 periods × 6 nights = 60 days.
- **Total planned duration:** 81 days.
- **Maximum extension:** one additional 12-day pair of randomized periods only if primary data validity thresholds fail before unblinding.

**Period structure.**

- Each period lasts 6 nights.
- Days 1–2 after each condition switch are transition/lag days.
- Days 3–6 are primary analyzable days.
- If the same condition repeats across adjacent periods, days 1–2 of the new period are still labeled as transition days for consistency, but a sensitivity analysis will include them.

**Primary outcome.** Morning Barrier Burden Score, MBBS:

\[
MBBS_t = \frac{dryness_t + tightness_t + (10 - barrier\ comfort_t)}{3}
\]

Each component is rated 0–10 before morning skincare. Lower MBBS is better.

**Secondary outcomes.** Individual MBBS components, flaking, redness, burning, stinging, itching, irritation, weekly global skin quality, rescue actions, retinol pauses, sunscreen adherence, and standardized-photo redness metrics.

**Exploratory outcomes.** Acne lesion events, pore/texture appearance, optional hydration-meter readings.

**Safety outcomes.** Persistent irritation, burning/stinging, flaking, eczematous rash, eyelid involvement, suspected allergic reaction, acne flare, barrier disruption, retinol pause, cleanser rescue, and trial stoppage.

**Primary decision rule.** Continue Snail 92 only if the omission condition is worse than continuation by at least **0.5 MBBS points**, the exact randomization-based analysis clearly supports the direction of benefit, and there is no countervailing irritation/acne/safety harm. Otherwise discontinue Snail 92 by default.

---

## 2. Primary causal question and estimand

The target question is not whether Snail 92 is better than a generic moisturizer. It is:

> **What happens to my skin if I remove Snail 92 from my current routine and otherwise keep the routine unchanged?**

The primary comparison is therefore:

\[
\text{Continuation: routine + Snail 92}
\]

versus

\[
\text{Omission: same routine - Snail 92, no replacement layer}
\]

The target is **personal incremental utility** of Snail 92 in this specific routine. This matters because the routine already contains substantial moisturization from La Roche-Posay Lipikar AP+M morning and evening. The omission condition is not “no moisturizer.” It is “no Snail 92 layer,” while still keeping the rest of the routine stable.

This trial can estimate whether the **product as used** contributes enough benefit to justify keeping it. It cannot isolate “snail mucin-specific” benefit because Snail 92 is a formulated product, not pure snail mucin. If Snail 92 appears beneficial, possible explanations include snail secretion filtrate, other formulation ingredients, texture/occlusion, interaction with retinol/Lipikar, or expectancy. If it does not appear beneficial, the conclusion is limited to this routine, this skin, this measurement system, and this trial window.

A generic hydrating comparator is not part of the primary trial. The stress test correctly noted that an active hydrating comparator could produce a null result even if both products are better than omission, making it unsuitable for the discontinuation question. A replacement-product trial is a reasonable follow-up only if this trial shows that the Snail 92 step matters.

---

## 3. Final recommended design

### Design choice

Use a **full-face randomized switchback discontinuation trial** with 10 randomized periods of 6 nights each after a 21-day run-in.

This design is preferred over a simple before/after discontinuation because before/after designs are too vulnerable to secular trends, weather, stress, retinol adaptation, seasonal changes, and regression to the mean. It is preferred over predictable ABAB alternation because open-label subjective outcomes are expectancy-sensitive, and predictable alternation makes anticipation worse. It is preferred over split-face because your chosen use case is full-face routine removal, and split-face application would distort product amount, transfer, and real-world behavior.

### Run-in

The run-in has four functions:

1. Stabilize retinol cadence.
2. Stabilize cleanser rules.
3. Stabilize sunscreen use.
4. Pilot diary/photos so the randomized phase is not spent debugging measurement.

The stress test warned that a 14-day run-in is too short if retinol cadence, cleanser behavior, and sunscreen policy are being changed at the same time. The revised default is therefore **21 days**, with the final 7 days required to meet stability criteria.

**Run-in stability criteria before randomization:**

- Retinol cadence followed without unplanned pause for the final 7 days.
- No moderate/severe irritation episode in the final 7 days.
- Morning diary completion ≥6 of final 7 days.
- Sunscreen rule followed ≥6 of final 7 days.
- No new skincare products introduced.
- No major travel/illness/sunburn event in the final 7 days.

If these criteria are not met, extend run-in by 7 days once. If still not met, postpone the trial or simplify the routine before starting.

### Randomized phase

- **10 periods**
- **6 nights per period**
- **5 continuation periods**
- **5 omission periods**
- **Maximum run length:** no more than 2 consecutive periods in the same condition.
- **No visible XY/YX block structure.**
- **Future sequence concealed by friend until data lock.**

Transition handling:

- Period days 1–2 excluded from the primary analysis.
- Period days 3–6 included in the primary analysis.
- Transition days retained for lag/carryover sensitivity plots.

There is no separate washout. A product-free washout would answer a different question and increase burden. Analytic lag exclusion is enough for this practical discontinuation trial.

---

## 4. Comparator/control condition

### Primary control condition

The primary control is:

> **Usual routine minus Snail 92, with no replacement layer.**

Nighttime order in the omission condition:

1. Cleanser.
2. Kikumasamune toner/lotion.
3. Skip Snail 92 step.
4. Retinol if scheduled.
5. Lipikar AP+M.

This is the cleanest control for the actual decision. It asks whether the product can be removed, not whether it can be replaced.

### Blinding

Blinding is not realistic for the primary estimand. A “no extra layer” period is behaviorally obvious. Trying to disguise it with coded jars would force a replacement layer or fake product and would corrupt the estimand. The revised protocol therefore does **not** pretend to blind the primary comparison.

Instead, it uses:

- Concealed future randomization schedule.
- Daily expectancy/perceived-condition tracking.
- Objective adherence logging.
- Predefined decision thresholds.
- Restricted analysis choices.
- Conservative interpretation of subjective outcomes.

Coded jars are not used in the primary trial. They are reserved for an optional follow-up trial: Snail 92 versus a generic hydrating replacement.

---

## 5. Routine standardization

The goal is to hold the rest of the routine stable without creating an artificial, irritating routine that you would not otherwise use.

### Morning routine

Every morning, after ratings/photos:

1. Kikumasamune 2-in-1 Face Toner + Full Body Lotion.
2. ZealSea 10% Azelaic Acid Facial Cream/serum.
3. La Roche-Posay Lipikar AP+M.
4. CeraVe AM Facial Moisturizing Lotion SPF 50.

### Sunscreen policy

Use CeraVe AM SPF 50 every morning as the final morning step during run-in and randomized phases.

This is a revision from the earlier exposure-triggered sunscreen rule. The stress test flagged that exposure-triggered sunscreen is too permissive for a retinoid user and can confound redness. Daily SPF is safer and cleaner. If you go outside for prolonged daylight exposure, reapply according to product instructions and log reapplication.

### Night routine: continuation condition

1. Cleanser according to standardized rule.
2. Kikumasamune toner/lotion.
3. COSRX Snail 92, full-face application.
4. CeraVe Resurfacing Retinol Serum if scheduled.
5. Lipikar AP+M.

### Night routine: omission condition

1. Cleanser according to standardized rule.
2. Kikumasamune toner/lotion.
3. Skip Snail 92 step.
4. CeraVe Resurfacing Retinol Serum if scheduled.
5. Lipikar AP+M.

### Retinol cadence

Use CeraVe Resurfacing Retinol Serum every other night throughout run-in and randomized phases.

Reasoning: every-other-night use is close to your current 1–3 day frequency, gives enough standardization for inference, and avoids adaptive “skip when irritated” confounding. Do not make up missed retinol nights. Resume at the next scheduled retinol night.

If every-other-night proves unstable during run-in, switch to every-third-night before randomization and restart/extend run-in. Do not change cadence during the randomized phase except under safety rules.

### Cleanser rule

Default nighttime cleanser:

- CeraVe Acne Control Cleanser with 2% salicylic acid.

Use gently with lukewarm water. Keep contact time roughly constant. Do not scrub.

Because the background routine includes salicylic acid cleanser, azelaic acid, and retinol, the safety burden is nontrivial. The stress test specifically flagged this stacked irritancy risk.

### Cleanser rescue rule

Use the known-tolerated oil cleanser instead of the salicylic acid cleanser that evening if any of the following are present in the morning:

- Dryness ≥7/10.
- Tightness ≥7/10.
- Burning ≥4/10.
- Stinging ≥4/10.
- Flaking score ≥2/3.
- Visible barrier compromise.
- Painful irritation after the prior night’s routine.

This is a **planned safety rescue**, not a protocol violation. It is part of the treatment-policy estimand. It must be logged, but it is not adjusted away in the primary analysis.

### Moisturizer consistency

Lipikar AP+M is used morning and evening in both conditions. Amount should be roughly standardized: use the same approximate amount each application, recorded as normal / half / extra.

### Shaving

- Keep shaving schedule as consistent as feasible.
- Shave after morning ratings and photos.
- Log shaving day.
- Do not introduce new shaving products.

### Pillowcases

- Change pillowcase on a fixed schedule, preferably twice weekly.
- Log changes.

### Travel, illness, sweating, masks, sun/wind exposure

Log all of the following:

- Travel.
- Illness.
- Medication changes.
- Heavy sweating/exercise before photos.
- Mask wearing >1 hour.
- Prolonged outdoor exposure.
- Wind/cold exposure.
- Sunburn.
- Poor sleep.
- High stress.

These are logged variables, not automatic protocol violations.

### Product changes

No new skincare, makeup base products, masks, exfoliants, spot treatments, peels, procedures, or device treatments during the randomized phase unless medically necessary.

A medically necessary product change is a protocol deviation but not a moral failure. Log it and continue only if safety allows.

---

## 6. Outcome hierarchy

### Primary outcome

**Morning Barrier Burden Score**, measured daily before morning skincare:

\[
MBBS_t = \frac{dryness_t + tightness_t + (10 - barrier\ comfort_t)}{3}
\]

Components:

- `dryness_nrs`: 0 = none, 10 = worst imaginable.
- `tightness_nrs`: 0 = none, 10 = worst imaginable.
- `barrier_comfort_nrs`: 0 = very uncomfortable/unsettled, 10 = very comfortable/settled.

MBBS is primary because Snail 92’s most plausible incremental benefit in this routine is barrier comfort/hydration, not acne or pore size. The review agreed MBBS is defensible but warned that it is subjective and expectancy-sensitive. The design therefore uses randomization, repeated crossovers, future-sequence concealment, expectancy tracking, and conservative decision rules.

### Secondary outcomes

Daily:

- `flaking_score`: 0 none, 1 trace, 2 obvious/localized, 3 marked/widespread.
- `redness_nrs`: 0–10.
- `burning_nrs`: 0–10.
- `stinging_nrs`: 0–10.
- `itching_nrs`: 0–10.
- `irritation_nrs`: 0–10.
- `new_inflam_lesions_simple`: count of clearly new inflamed acne lesions.
- `active_painful_lesion_binary`: yes/no.
- `rescue_cleanser_used`: yes/no.
- `retinol_paused_safety`: yes/no.
- `safety_event`: yes/no.

Weekly:

- `overall_skin_quality_nrs`: 0–10.
- `overall_barrier_week_nrs`: 0–10.
- `overall_acne_week_nrs`: 0–10.
- `overall_texture_week_nrs`: 0–10.
- Free-text global impression, written before looking at summaries.

Photo-session outcomes, three mornings per week:

- Standardized visual redness score.
- Image-derived cheek/forehead redness index.
- Exploratory texture/pore metrics.

### Exploratory outcomes

Acne, pore appearance, and texture are explicitly not decision-grade unless they show large, consistent harm.

The stress test was blunt here: acne is low-frequency and delayed, and pore/texture inference from smartphone images is too weak to drive the conclusion.

### Minimal practically important differences

Predeclare:

- MBBS: 0.5 points.
- Dryness: 0.5 points.
- Tightness: 0.5 points.
- Barrier comfort: 0.5 points.
- Redness/burning/stinging/irritation: 0.5 points.
- Flaking: 0.3 points on 0–3 scale.
- Weekly overall skin quality: 0.7 points.
- Acne: no formal benefit threshold; only harm thresholds.

---

## 7. Measurement protocol

### Required daily morning diary

Complete before washing, showering, shaving, touching face excessively, or applying products.

Required daily ratings:

```text id="11k2ge"
dryness_nrs
tightness_nrs
barrier_comfort_nrs
flaking_score
redness_nrs
burning_nrs
stinging_nrs
itching_nrs
irritation_nrs
new_inflam_lesions_simple
active_painful_lesion_binary
perceived_condition
condition_confidence
expect_skin_tomorrow_nrs
```

`perceived_condition` values:

- `continuation`
- `omission`
- `unsure`

Because the trial is open-label, this item measures expectation and awareness rather than testing blinding.

### Required daily evening log

Complete after skincare:

```text id="8qmu8y"
assigned_condition
actual_condition
snail92_used
retinol_scheduled
retinol_used
cleanser_type
rescue_cleanser_used
lipikar_used_pm
trial_step_adherent
safety_rescue_action
notes
```

### Acne measurement

Use simplified acne tracking.

Count only clearly new inflammatory lesions:

- Red raised lesion.
- Pustule.
- Deep painful lesion.

Do not separately classify comedones daily. Do not spend time adjudicating ambiguous lesions. Record ambiguous lesion notes only if clinically relevant.

Weekly, record:

```text id="bccvmy"
week_new_inflam_lesions_total
week_painful_deep_lesion_count
week_acne_bother_nrs
```

### Photo protocol

Photos are required **three mornings per week**, not daily. Default schedule:

- Monday.
- Wednesday.
- Saturday.

If a scheduled photo is missed, do not make it up unless it can be done before morning skincare under the same conditions. Otherwise mark missing.

Photo workflow:

1. Complete morning ratings.
2. Do **not** rinse first if optional hydration readings will be taken.
3. Sit/stand in the fixed photo location.
4. Use rear camera on Google Pixel 10.
5. Use tripod/fixed mount.
6. Use same lighting, distance, angle, and background.
7. Take:
   - frontal face;
   - left 45°;
   - right 45°.
8. Optional close-up: nose/cheek region only if this does not threaten adherence.

Do not use beauty filters, portrait mode, skin smoothing, or automatic retouching if they can be disabled.

### Photo interpretation

Photos are secondary and illustrative. The primary photo-derived metric is redness, not pore size.

Predefine:

- ROI 1: left cheek.
- ROI 2: right cheek.
- ROI 3: central forehead.
- ROI 4: chin.

Primary image metric:

- Median `a*` value in CIELAB color space after simple white/gray reference normalization, if a gray card is used.

Exploratory image metrics:

- R/G redness ratio.
- Local texture variance in cheek ROIs.
- Manual blinded-at-file-name review of photo sessions.

No exploratory image metric can override MBBS.

### Optional hydration meter

Optional only. Do not buy one unless you are willing to follow the procedure.

The review warned that measuring after rinsing can make the reading reflect the rinse rather than the overnight treatment. Therefore, hydration readings must be taken:

- Before any rinse/wash/product.
- After sitting quietly indoors for 20 minutes.
- Same room if possible.
- Same sites each time.
- Three replicate readings per site.

Sites:

- Left cheek.
- Right cheek.
- Forehead.

If this is too annoying, drop the device. Do not let pseudo-objective readings contaminate the decision.

---

## 8. Diary and data structure

### Daily table

Use one row per calendar day.

```text id="282mch"
date
day_num
phase
period_num
period_day
assigned_condition
actual_condition
snail92_used
adherence_primary
transition_day
analyzable_primary

dryness_nrs
tightness_nrs
barrier_comfort_nrs
mbbs
flaking_score
redness_nrs
burning_nrs
stinging_nrs
itching_nrs
irritation_nrs

new_inflam_lesions_simple
active_painful_lesion_binary
acne_notes

retinol_scheduled
retinol_used
retinol_paused_safety
cleanser_type
rescue_cleanser_used
toner_used
azelaic_used
lipikar_am_used
lipikar_pm_used
sunscreen_am_used
sunscreen_reapplied
outdoor_minutes

shaved_today
pillowcase_changed
mask_hours
exercise_sweat_binary
travel_binary
illness_binary
med_change_binary
sun_wind_exposure_note

perceived_condition
condition_confidence
expect_skin_tomorrow_nrs

photo_scheduled
photo_taken
photo_session_id

safety_event_binary
rescue_action_note
protocol_deviation_binary
protocol_deviation_note
free_text_notes
```

### Weekly review table

```text id="6028wa"
week_num
date_start
date_end
overall_skin_quality_nrs
overall_barrier_week_nrs
overall_redness_week_nrs
overall_acne_week_nrs
overall_texture_week_nrs
suspected_pattern_note
major_deviation_note
continue_trial_safety_check
```

### Adverse event table

```text id="xldbnt"
event_id
date_start
date_end
event_type
severity
symptoms
suspected_trigger
action_taken
retinol_paused
cleanser_rescue
trial_product_stopped
clinician_contacted
resolved
notes
```

### Protocol deviation table

```text id="fg4lw2"
deviation_id
date
period_num
condition
deviation_type
description
severity_for_validity
included_primary
reason
```

### Photo metadata table

```text id="u5yodl"
photo_session_id
date
period_num
period_day
condition
view
file_path
timestamp
lighting_note
distance_note
gray_card_used
usable_for_redness
usable_for_blog
exclusion_reason
```

### Folder structure

```text id="dt7ou8"
snail92_nof1/
  00_preregistration/
  01_randomization_friend_only/
  02_diary_raw/
  03_diary_clean/
  04_photos_raw/
  05_photos_processed/
  06_analysis/
  07_figures/
  08_blog_reporting/
  09_archive_locked/
```

---

## 9. Safety protocol

This is a self-experiment, not a test of endurance. Safety rescues are part of the protocol.

### Patch testing

No new comparator is used in the primary trial, so no comparator patch test is required.

If any new material is introduced, including a new container material that contacts product, do a repeated open application test before randomization:

- Apply small amount to jawline or behind ear.
- Once daily for 7 days minimum.
- Prefer 14 days if feasible.
- Do not randomize if delayed rash, itching, swelling, persistent redness, or eczematous reaction occurs.

The stress test specifically criticized a 3-night patch test as too short for delayed allergic contact dermatitis.

### Retinol pause rules

Pause retinol for the next two scheduled retinol nights if any occur:

- Burning ≥5/10 for two consecutive mornings.
- Stinging ≥5/10 for two consecutive mornings.
- Dryness ≥8/10 for two consecutive mornings.
- Tightness ≥8/10 for two consecutive mornings.
- Flaking = 3.
- Visible cracking, rawness, or painful barrier disruption.
- New eyelid irritation or swelling.

After the pause, resume at the same cadence if symptoms return to mild levels. If symptoms recur after resuming, stop the trial and reassess.

### Cleanser rescue rules

Use oil cleanser instead of salicylic acid cleanser that night if any threshold is met:

- Dryness ≥7.
- Tightness ≥7.
- Burning ≥4.
- Stinging ≥4.
- Flaking ≥2.
- Visible barrier compromise.

### Stop current period

Stop the assigned condition for the remainder of the current period and use only the stable non-trial routine if:

- Burning/stinging ≥7 on any day.
- Persistent moderate rash for >48 hours.
- Obvious dermatitis.
- Worsening irritation despite retinol pause and cleanser rescue.
- Painful acne flare with ≥2 deep painful lesions in a week.

### Stop entire trial

Stop the trial if any occur:

- Hives.
- Facial swelling.
- Eyelid swelling.
- Oozing/crusting rash.
- Suspected allergic contact dermatitis.
- Severe painful burning.
- Rapidly worsening diffuse redness.
- Skin cracking/rawness.
- Infection concern.
- Any symptom that feels clinically unsafe.

### Dermatologist/clinician contact triggers

Contact a dermatologist or appropriate clinician if:

- Eyelid involvement occurs.
- Rash persists >72 hours.
- Swelling occurs.
- Burning/stinging remains ≥5 for >48 hours after stopping actives.
- Painful nodules/cysts cluster or worsen.
- You suspect allergic contact dermatitis.
- You are unsure whether continuing is safe.

### Safety rescue versus protocol violation

Safety rescues are not violations when triggered by prespecified criteria. Discretionary changes outside criteria are protocol deviations.

---

## 10. Randomization and implementation

### Core principle

Do not expose the randomization seed or sequence to yourself before analysis. The prior draft’s public seed and predictable XY/YX blocks were identified as a concealment failure.

### Friend-managed allocation

Your friend should generate the sequence offline. You should receive only:

- Current period number.
- Start/end dates.
- Assigned condition for the current period only.

Since conditions are open-label, the friend cannot conceal the current condition. The friend can conceal the **future sequence**, which still matters because anticipation can influence subjective ratings.

### Randomization restrictions

Generate all 10-period sequences satisfying:

- Exactly 5 continuation periods.
- Exactly 5 omission periods.
- No more than 2 consecutive periods of the same condition.
- Not strictly alternating for all 10 periods.
- First two periods not both followed by deterministic alternation; this is mostly handled by avoiding strict alternation.

Randomly select one valid sequence.

### Friend-only R code

This code is for the friend to run. Do not run it yourself before data lock.

```r id="cjmoc2"
# friend_only_generate_randomization.R
# Do not share the generated schedule with participant before database lock.

library(tidyverse)
library(digest)

start_date <- as.Date("YYYY-MM-DD")  # first randomized period date
period_len <- 6
n_periods <- 10

has_long_run <- function(x, max_run = 2) {
  r <- rle(x)
  any(r$lengths > max_run)
}

is_strict_alternation <- function(x) {
  all(x[-1] != x[-length(x)])
}

# Enumerate all balanced sequences
all_seq <- combn(n_periods, n_periods / 2, simplify = FALSE) |>
  map(function(idx) {
    x <- rep("omission", n_periods)
    x[idx] <- "continuation"
    x
  })

valid_seq <- all_seq |>
  keep(~ !has_long_run(.x, max_run = 2)) |>
  keep(~ !is_strict_alternation(.x))

# Friend chooses a private random seed or uses system randomness.
# Do not put this seed in the preregistration.
chosen <- sample(valid_seq, size = 1)[[1]]

schedule <- tibble(
  period_num = 1:n_periods,
  assigned_condition = chosen,
  period_start = start_date + (period_num - 1) * period_len,
  period_end = period_start + period_len - 1
) |>
  mutate(
    transition_start = period_start,
    transition_end = period_start + 1,
    analyzable_start = period_start + 2,
    analyzable_end = period_end
  )

write_csv(schedule, "friend_only_schedule.csv")

# Commitment record: share only the hash before trial starts.
schedule_hash <- digest(schedule, algo = "sha256")
writeLines(schedule_hash, "schedule_sha256_hash.txt")

# Optional: also hash the CSV file itself.
file_hash <- digest(file = "friend_only_schedule.csv", algo = "sha256")
writeLines(file_hash, "schedule_file_sha256_hash.txt")

schedule_hash
file_hash
```

### Preregistration commitment

Before the randomized phase starts, preregister:

- Trial start date.
- Randomization restrictions.
- The SHA-256 hash of the concealed schedule.
- The fact that the friend holds the schedule.
- The rule that the full schedule is revealed only after the primary dataset and analysis script are locked.

Do not preregister the actual sequence.

### Expectancy tracking

Daily after symptoms are recorded:

```text id="i5hssh"
perceived_condition: continuation / omission / unsure
condition_confidence: 0-100
expect_skin_tomorrow_nrs: 0-10
```

Interpretive downgrade rule:

- If perceived condition is correct on ≥80% of analyzable days with mean confidence ≥70, subjective outcomes will be labeled “high expectancy risk.”
- The primary analysis is still run, but conclusions must be more conservative.
- This does not automatically invalidate the trial because current condition is inherently hard to blind; it flags interpretation.

---

## 11. Statistical analysis plan

### Primary analysis population

Use randomized-phase days satisfying:

- Period day 3–6.
- Valid period.
- MBBS available.
- Assigned condition known.
- No full trial stoppage.

### Valid period definition

A period is valid for primary analysis if:

- At least 3 of 4 analyzable mornings have MBBS.
- Assigned condition followed on at least 5 of 6 period nights.
- At least 3 of 4 analyzable nights followed assigned condition.
- No non-safety product change occurred.
- No major unrelated event dominates the period, such as sunburn, acute illness with facial symptoms, or travel causing major routine collapse.

Safety rescues do not automatically invalidate the period. They are part of the treatment-policy estimand.

### Primary effect definition

Define:

\[
\Delta = \overline{MBBS}_{omission} - \overline{MBBS}_{continuation}
\]

So:

- \(\Delta > 0\): omission worsened barrier burden; favors keeping Snail 92.
- \(\Delta = 0\): no evidence of practical difference.
- \(\Delta < 0\): omission improved barrier burden; favors discontinuation.

### Primary inferential engine

Use **exact randomization inference** under the restricted randomization scheme.

Primary statistic:

\[
T = mean(MBBS \mid omission) - mean(MBBS \mid continuation)
\]

using analyzable days from valid periods.

The reference distribution is generated by enumerating all valid sequences satisfying the same randomization restrictions and recalculating the statistic under each sequence, preserving the observed outcome time series.

This is the only primary inferential gateway. Bayesian modeling is supportive only. The stress test specifically warned against allowing either a p-value or posterior model to rescue a borderline result.

### Primary randomization test skeleton

```r id="1xzdt4"
library(tidyverse)
library(lubridate)

dat <- read_csv("03_diary_clean/daily_clean.csv")

primary_dat <- dat |>
  filter(
    phase == "randomized",
    analyzable_primary == TRUE,
    valid_period_primary == TRUE,
    !is.na(mbbs)
  )

obs_stat <- primary_dat |>
  group_by(assigned_condition) |>
  summarise(m = mean(mbbs), .groups = "drop") |>
  pivot_wider(names_from = assigned_condition, values_from = m) |>
  transmute(delta = omission - continuation) |>
  pull(delta)

# Generate all restricted sequences
n_periods <- 10

has_long_run <- function(x, max_run = 2) {
  any(rle(x)$lengths > max_run)
}

is_strict_alternation <- function(x) {
  all(x[-1] != x[-length(x)])
}

all_seq <- combn(n_periods, n_periods / 2, simplify = FALSE) |>
  purrr::map(function(idx) {
    x <- rep("omission", n_periods)
    x[idx] <- "continuation"
    x
  }) |>
  purrr::keep(~ !has_long_run(.x, 2)) |>
  purrr::keep(~ !is_strict_alternation(.x))

period_map <- primary_dat |>
  distinct(period_num) |>
  arrange(period_num)

calc_stat_for_seq <- function(seq_vec) {
  assign_tbl <- tibble(
    period_num = 1:n_periods,
    perm_condition = seq_vec
  )

  primary_dat |>
    select(-assigned_condition) |>
    left_join(assign_tbl, by = "period_num") |>
    group_by(perm_condition) |>
    summarise(m = mean(mbbs), .groups = "drop") |>
    pivot_wider(names_from = perm_condition, values_from = m) |>
    transmute(delta = omission - continuation) |>
    pull(delta)
}

null_stats <- map_dbl(all_seq, calc_stat_for_seq)

p_one_sided_benefit <- mean(null_stats >= obs_stat)
p_two_sided <- mean(abs(null_stats) >= abs(obs_stat))

tibble(
  obs_delta = obs_stat,
  p_one_sided_benefit = p_one_sided_benefit,
  p_two_sided = p_two_sided,
  n_reference_sequences = length(null_stats)
)
```

### Visual analysis

Before inferential modeling:

1. Plot daily MBBS over time.
2. Shade continuation and omission periods.
3. Mark transition days.
4. Mark retinol pauses and cleanser rescues.
5. Plot dryness, tightness, comfort separately.
6. Plot redness/burning/stinging separately.
7. Plot rescue events by period.
8. Plot period-level MBBS means.

Visual analysis is descriptive. It cannot override the decision rule.

### Secondary analyses

#### Period-level summary

Compute period means for days 3–6:

```text id="g79kia"
period_mbbs_mean
period_dryness_mean
period_tightness_mean
period_comfort_mean
period_redness_mean
period_burning_mean
period_stinging_mean
period_flaking_mean
period_rescue_count
period_retinol_pause_count
```

#### Simple model-based sensitivity

Use a deliberately simple model:

\[
MBBS_t = \beta_0 + \beta_1 I(omission_t) + f(time_t) + \epsilon_t
\]

Options:

- Linear time term.
- Period-day term.
- AR(1) residual sensitivity if stable.

Do **not** include rescue cleanser, retinol pause, or irritation-triggered behavior as primary covariates. Those are post-randomization intercurrent events. The stress test identified adjustment for these as a post-treatment bias risk.

A minimal Bayesian sensitivity model is acceptable:

```r id="2r9el2"
library(brms)

fit_mbbs <- brm(
  mbbs ~ assigned_omission + day_num + period_day,
  data = primary_dat,
  family = student(),
  chains = 4,
  iter = 4000,
  cores = 4
)
```

This model is supportive only.

### Lag and transition sensitivity

Run:

1. Primary: days 3–6.
2. Sensitivity A: days 2–6.
3. Sensitivity B: all period days.
4. Sensitivity C: exclude period day 3 as well, using days 4–6 only.
5. Sensitivity D: same-condition adjacent periods analyzed without transition exclusion for the second period.

If conclusions depend entirely on one lag convention, downgrade confidence.

### Redness/irritation analysis

Use the same delta definition:

\[
\Delta_{harm} = mean(outcome \mid omission) - mean(outcome \mid continuation)
\]

Positive values mean omission is worse. Negative values mean continuation is worse.

For harm, focus on whether Snail continuation worsens burning/stinging/redness by ≥0.5 points or triggers safety events.

### Acne analysis

Acne is harm monitoring, not a primary efficacy endpoint.

Report:

- Total new inflammatory lesions by condition.
- Number of days with ≥1 new inflammatory lesion by condition.
- Number of weeks with ≥3 new inflammatory lesions.
- Number of painful deep lesions.
- Timing relative to condition over prior 7–14 days, exploratory only.

Do not use acne to keep Snail 92 unless the barrier outcome already supports keeping. Do use acne to discontinue if continuation appears to worsen acne meaningfully.

### Image analysis

Predefine the image pipeline before unblinding/final analysis:

1. Exclude unusable photos using objective criteria:
   - wrong lighting;
   - missing view;
   - product already applied;
   - major blur;
   - major pose mismatch.
2. Use only scheduled photo sessions.
3. Use fixed ROIs.
4. Primary image metric: median cheek `a*` redness.
5. Exploratory texture metrics: local variance only; no pore-size claim.

No custom method shopping after seeing results.

### Missing data

- Missing daily MBBS: no imputation for primary randomization test.
- Missing secondary outcome: analyze available data and report missingness.
- Missing photo: no imputation.
- Invalid period: exclude from primary analysis; include in sensitivity if informative.

Extension rule:

- If fewer than 8 of 10 periods are valid, or if analyzable MBBS missingness exceeds 20%, add one additional 12-day pair of periods before unblinding, generated by the friend under the same restrictions.

### Outliers

Do not remove outliers solely because they are extreme. Mark externally caused days, such as sunburn or illness, using prespecified deviation flags. Primary analysis includes them unless the entire period is invalidated by a major unrelated event.

### Accidental unblinding

Because the current condition is open-label, unblinding refers only to future sequence discovery. If future assignments are accidentally revealed:

- Record date and mechanism.
- Continue trial if safe.
- Mark all later days as `future_sequence_known = TRUE`.
- Primary analysis still runs.
- Interpretation downgraded if >50% of analyzable days occur after future-sequence revelation.

---

## 12. Decision rule

### Primary decision statistic

\[
\Delta = mean(MBBS_{omission}) - mean(MBBS_{continuation})
\]

Positive values favor keeping Snail 92.

### Keep Snail 92

Keep Snail 92 only if **all** are true:

1. \(\Delta \ge 0.5\) MBBS points.
2. Exact randomization analysis supports benefit direction under the prespecified restricted randomization scheme.
3. At least 4 of 5 valid continuation/omission contrasts or period-pair summaries are directionally compatible with benefit, or the time-series plot shows no obvious single-period artifact.
4. No countervailing harm:
   - continuation does not worsen mean burning, stinging, irritation, or redness by ≥0.5;
   - no safety-stop event attributable to continuation;
   - no meaningful acne worsening during continuation.

### Discontinue Snail 92

Discontinue if any are true:

- \(\Delta < 0.5\).
- Effect favors omission.
- Results are directionally mixed and fragile.
- Safety or acne harm appears worse during continuation.
- Missingness/deviation prevents a trustworthy conclusion and extension is not run.

### Inconclusive but discontinue by default

This is the default if:

- \(\Delta\) is between 0 and 0.5.
- \(\Delta \ge 0.5\) but supported by only one odd period or one modeling choice.
- Exact randomization evidence is weak.
- Expectancy risk is high.
- Sensitivity analyses conflict.

This matches your stated practical default: Snail 92 must earn its place. Inconclusive evidence is not enough to keep it.

### Run follow-up trial

Run a follow-up only if:

- Omission clearly worsens MBBS, but you suspect the effect is just “extra hydrating layer,” not Snail 92-specific; or
- Snail 92 helps barrier comfort but cost, texture, or product preference remains uncertain.

Follow-up design: Snail 92 versus coded generic hydrating comparator. That is a separate replacement question.

### Anti-cherry-picking rule

The decision cannot be changed based on:

- favorite before/after photos;
- pore/texture metrics;
- acne unless harm is clear;
- one unusually good or bad week;
- Bayesian model if the primary randomization analysis does not support keeping;
- post hoc exclusion of inconvenient periods.

---

## 13. Feasibility and burden control

### Required daily tasks

Keep these short:

Morning, 2–3 minutes:

- MBBS components.
- Flaking.
- Redness/burning/stinging/itching/irritation.
- Simple acne count.
- Expectancy item.

Evening, 1 minute:

- Assigned condition followed?
- Retinol used?
- Cleanser used?
- Rescue action?
- Notes.

### Required non-daily tasks

- Photos three mornings/week.
- Weekly review once/week.
- Pillowcase change log.

### Optional/enhanced tasks

- Hydration meter.
- Close-up photos.
- Weather/humidity import.
- Detailed image processing.
- Manual blinded photo scoring.
- Stress/sleep/alcohol logs.

Optional tasks cannot define success. Drop them if they threaten adherence.

---

## 14. Blog-post/reporting plan

### Preregistration summary

Use a plain-language summary:

> I tested whether I could remove COSRX Snail 92 from my current routine without worsening my skin. I used randomized full-face continuation and omission periods while holding retinol, cleanser rules, moisturizer, azelaic acid, and sunscreen stable. My primary outcome was morning dryness/tightness/barrier comfort. I precommitted to discontinue Snail 92 unless continuation produced a practically meaningful benefit.

### Recommended figures

1. Trial timeline with continuation/omission periods.
2. Daily MBBS time series with transition days marked.
3. Period-level MBBS means by condition.
4. Randomization-inference reference distribution with observed statistic.
5. Secondary symptom plot: redness/burning/stinging.
6. Rescue action plot.
7. Acne harm-monitoring plot.
8. Selected photo panels using prespecified selection rule.

### Photo selection rule

Before unblinding/final interpretation, select photos for the blog as follows:

- Use the first valid scheduled photo session from each valid period’s analyzable window, or
- Use a reproducible random sample of one valid photo session per period selected before looking at condition labels.

Do not handpick “best” before/after photos. The stress test specifically flagged blog-photo cherry-picking as a validity threat.

### Limitation language

State clearly:

- This is one person.
- The primary outcome is subjective.
- The trial is open-label.
- Future sequence concealment reduces but does not eliminate expectancy.
- Photos are supportive, not definitive.
- Acne is underpowered.
- Pore/texture analysis is exploratory.
- Results apply to this routine, not to all skincare users.
- The trial estimates product utility, not snail mucin mechanism.

### What the trial teaches

This trial is useful as a blog case study because it shows:

- estimand alignment matters;
- placebo-like blinding can answer the wrong question;
- omission and replacement are different decisions;
- rescue actions are part of the practical effect;
- measurement burden must be designed, not wished away;
- a product should have to clear a predeclared decision threshold.

---

## 15. Final operational checklist

### What to buy

Required:

- Phone tripod or fixed mount.
- Gray card or neutral reference card.
- Floor tape/position markers.
- Notebook/app/spreadsheet for diary.
- Backup supply of current products.
- Same sunscreen for whole trial.
- Same retinol for whole trial.
- Same cleanser and rescue cleanser for whole trial.
- Same Lipikar and Kikumasamune products for whole trial.

Optional:

- Hydration meter.
- Extra storage for photos.
- Remote shutter.

No comparator product is needed for the primary trial.

### What to prepare

- Create project folder.
- Build daily diary form.
- Build weekly review form.
- Mark photo station.
- Pilot photos.
- Confirm camera settings.
- Decide retinol schedule.
- Write safety thresholds into diary.
- Ask friend to generate concealed randomization schedule.
- Preregister schedule hash, not schedule.

### Run-in steps

Days −21 to −1:

- Use stable routine.
- Practice diary.
- Practice photos three times/week.
- Use daily sunscreen.
- Standardize retinol.
- Apply cleanser rescue rules.
- Check final 7-day stability criteria.

### Daily morning procedure

1. Complete diary before products.
2. If photo day, take standardized photos before products.
3. If hydration-meter day, take readings before rinse/wash/products after 20-minute acclimatization.
4. Apply morning routine.
5. Apply sunscreen.
6. Log unusual exposures later if needed.

### Daily evening procedure

1. Cleanse using default or rescue rule.
2. Apply Kikumasamune.
3. If continuation period: apply Snail 92.
4. If omission period: skip Snail 92.
5. Apply retinol if scheduled and not paused.
6. Apply Lipikar.
7. Complete evening adherence/safety log.

### Photo schedule

- Monday, Wednesday, Saturday.
- Same location, lighting, distance.
- Frontal, left 45°, right 45°.
- No product before photos.
- No handpicked extra photos for inference.

### Weekly review

- Check missingness.
- Check safety.
- Check adherence.
- Record global skin quality.
- Do not inspect condition summaries.

### Safety checks

Stop, pause, or rescue according to thresholds. Do not rationalize through dermatitis.

### End-of-trial analysis sequence

1. Finish diary.
2. Clean data.
3. Flag deviations.
4. Lock valid periods.
5. Lock photo exclusions.
6. Lock primary analysis script.
7. Ask friend to reveal full schedule.
8. Verify schedule hash.
9. Run primary randomization analysis.
10. Run secondary analyses.
11. Run sensitivity analyses.
12. Apply decision rule.

### Final decision sequence

1. Estimate \(\Delta = MBBS_{omission} - MBBS_{continuation}\).
2. Check whether \(\Delta \ge 0.5\).
3. Check exact randomization support.
4. Check redness/irritation/acne harms.
5. Check sensitivity analyses.
6. Apply rule:
   - strong benefit and no harm → keep Snail 92;
   - no meaningful benefit → discontinue;
   - inconclusive → discontinue by default;
   - clear benefit but substitution question remains → consider follow-up replacement trial.

**Precommitted default:** if the trial does not produce clear, practically meaningful evidence that omission worsens barrier outcomes, discontinue Snail 92.