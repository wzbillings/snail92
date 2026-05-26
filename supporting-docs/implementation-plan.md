# Snail 92 Trial Implementation Plan

**Document status:** Operational plan for executing the Snail 92 n-of-1 discontinuation trial from preparation through archival.

**Source of truth:** The revised preregistration-ready protocol at `protocol/preregistration/revised-preregistration-ready-protocol.md` controls the scientific design. This plan turns that protocol into a practical work sequence for the repository.

**Core question:** Can COSRX Advanced Snail 92 All In One Cream be removed from the current routine without worsening skin outcomes, while the rest of the routine remains stable?

**Trial posture:** This is an unblinded self-experiment. The participant, investigator, trial coordinator, data manager, statistician, and report author are the same person. The project borrows useful discipline from clinical trial operations - protocol freeze, logs, data QC, analysis lock, reproducible reporting - while omitting formalities that do not improve this self-experiment, such as IRB submission, clinicaltrials.gov registration, sponsor monitoring, and formal consent workflows.

## Design Alignment Notes

The fixed design constraints for this plan are:

- The treatment comparison is **Snail 92 continuation versus Snail 92 omission with no replacement layer**.
- The trial is **open-label for current and future treatment assignment**. There is no placebo, coded jar, sham layer, allocation concealment, or friend-held schedule.
- Safeguards focus on behavior consistency, prespecified outcomes, versioned documentation, restricted analysis choices, and separation of confirmatory versus exploratory interpretation.
- The public repository should contain templates, code, documentation, and reproducible outputs, not identifiable face photos or private raw data.
- Photos are part of the formal evidence package through metadata, normalization, quality control, and image-derived outcomes, but participant face photos remain private and will not appear in the public repository or public writeup.
- Public image-method graphics should use a publicly available demo photo, not a trial photo.
- Consumer hydration-meter readings are excluded from this trial.
- Official trial start date: **June 7, 2026**.
- Final outputs must include both a private decision report and a public-facing blog-style writeup.

## Operating Principles

- Follow the revised protocol unless a documented amendment is made before the affected milestone begins.
- Use existing repository conventions: `docs/` is rendered Quarto output, `supporting-docs/` is source documentation, `templates/` holds CSV templates, `analysis/` holds Quarto analysis pages, and `R/` holds lightweight reusable helpers.
- Do not build a Shiny app, database, web form, or complex data-entry interface for this trial. Manual CSV entry from templates is the planned data capture method.
- Filled raw CSVs are stored under the ignored path `data/raw/private/`. Participant photo files are stored under the ignored path `data/raw/photos/`. Templates are public.
- Keep raw data immutable. All cleaning, exclusion flags, derived scores, photo metrics, tables, and figures must be generated reproducibly from raw inputs.
- Avoid informal mid-trial analysis. Weekly QC may check completeness, ranges, file backup, and safety, but not condition-specific outcome summaries.
- The default decision rule is conservative: Snail 92 must earn its place. Inconclusive evidence does not justify continuing it.

## Role Map

| Role | Practical responsibility | Performer |
|---|---|---|
| Participant | Follows assigned routine, records symptoms, captures photos, reports adverse events | User |
| Trial coordinator | Runs checklists, maintains logs, protects protocol adherence | User/Codex |
| Data manager | Maintains templates, raw-data freeze, QC reports, cleaning audit trail | User/Codex |
| Photo workflow owner | Maintains private photo storage, metadata, normalization, exclusions | User/Codex |
| Statistician | Locks analysis choices, runs primary and sensitivity analyses | User/Codex |
| Report author | Produces private decision report and public blog post | User/Codex |

## Repository Output Map

This repository already contains a usable scaffold. The plan below recommends adding only the files that are useful for trial execution.

| Area | Current files to reference | Recommended future files | Notes |
|---|---|---|---|
| Project shell | `snail92.Rproj`, `_quarto.yml`, `DESCRIPTION`, `renv.lock`, `.Rprofile` | None required before trial start | Confirms R project, Quarto site, and package lockfile. |
| Core docs | `README.md`, `index.qmd`, `LICENSE.md` | `supporting-docs/trial-master-file.md` | `docs/` is rendered output; do not put source-only docs there. |
| Protocol | `protocol/preregistration/revised-preregistration-ready-protocol.md`, `protocol/original-draft/original-protocol-draft.md`, `protocol/review/expert-stress-test-review.md`, `protocol/printable/*.docx` | `supporting-docs/protocol-amendments.md`, optional `protocol/preregistration/preregistration-snapshot.md` | Revised protocol is the source of truth. |
| Schedule | `supporting-docs/schedule/README.md` | `randomization/generate-randomization.R`, `randomization/randomization-seed.txt`, `randomization/treatment-schedule.csv`, public schedule hash | Schedule is self-generated, unblinded, and locked before randomized-phase start. |
| Data templates | `templates/daily_log_template.csv`, `templates/weekly_review_template.csv`, `templates/codebook_template.csv` | `templates/photo_metadata_template.csv`, `templates/adverse_event_template.csv`, `templates/deviation_log_template.csv` | Keep templates public; keep filled data private by default. |
| Logs | `notes/decision-log.md`, `notes/deviations-log.md` | `supporting-docs/adverse-event-log.md`, `supporting-docs/closeout-checklist.md` | If logs contain sensitive details, store working copies in ignored private paths and publish redacted summaries only. |
| Analysis | `analysis/01_data_import.qmd` through `analysis/05_exploratory_analysis.qmd`, `R/*.R` | Optional `R/photo_normalization.R`, `R/report_tables_figures.R` | Existing analysis pages are placeholders and should be extended milestone by milestone. |
| Reports | `reports/interim/.gitkeep`, `reports/final/.gitkeep` | `reports/final/private-decision-report.qmd`, `reports/final/public-blog-post.qmd` | Private report may stay out of public Git if it contains sensitive data or photos. |
| Private files | `.gitignore` excludes `data/raw/private/`, `data/raw/photos/`, `private/`, `local/`, `photos/`, `outputs/private/`, and `reports/private/` | Filled raw CSVs and participant photos | Confirm exclusions before trial start and before any push. |

## Milestone Overview

| Phase | Name | Timing | Gate |
|---:|---|---|---|
| 0 | Repository and documentation readiness | Now, before protocol freeze | Repo renders and critical documents are discoverable |
| 1 | Protocol finalization and preregistration package | Before any run-in data are decision-relevant | Protocol, estimand, outcomes, exclusions, and analysis rules frozen |
| 2 | Materials procurement and intervention readiness | Before run-in | Products and measurement setup ready |
| 3 | Randomization and schedule lock | Before randomized phase | Schedule generated or verified under protocol rules |
| 4 | Measurement system validation and dry run | During run-in or immediately before it | Diary, photos, storage, and burden tested |
| 5 | Trial initiation | Day 1 of official run-in/randomized workflow as defined by protocol | Baseline and first-day data captured |
| 6 | Active trial conduct and monitoring | Run-in and randomized phase | Daily execution, QC, safety, and backup maintained |
| 7 | Closeout after final observation | Immediately after last planned observation | Raw data and private photo archive frozen |
| 8 | Data cleaning and quality control | After closeout, before primary analysis | Clean datasets and QC reports generated reproducibly |
| 9 | Photo normalization and image-derived outcomes | After photo archive freeze, before outcome modeling | Photo metadata and image metrics locked |
| 10 | Primary analysis | After data, exclusions, and scripts are locked | Prespecified primary analysis completed |
| 11 | Sensitivity, exploratory, and learning analyses | After primary analysis | Robustness and learning analyses separated from primary inference |
| 12 | Final decision report and public-facing writeup | After analyses | Private decision and public report completed |
| 13 | Archival, reproducibility, and future reuse | After reporting | Final repo state tagged and reproducibility documented |

---

## Phase 0 - Repository and Documentation Readiness

| Field | Plan |
|---|---|
| Purpose | Confirm the project is a valid, renderable R/Quarto reproducible-research scaffold before trial-critical work begins. |
| Timing | Immediately, before protocol freeze and before generating any official schedule. |
| Entry criteria | Repository is cloned locally; current branch is the intended trial-preparation branch. |
| Responsible role | Trial coordinator and reproducible research engineer. |
| Repository files | `snail92.Rproj`, `_quarto.yml`, `README.md`, `index.qmd`, `DESCRIPTION`, `renv.lock`, `.gitignore`, `data/README.md`, `templates/*.csv`, `analysis/*.qmd`, `R/*.R`, `supporting-docs/*`. |

**Required tasks**

- Confirm `snail92.Rproj` exists and the repository root is the R project root.
- Confirm `DESCRIPTION` declares project dependencies and `renv.lock` is present.
- Run `quarto render` from the repository root and confirm the site renders to `docs/`.
- Confirm `README.md` and `index.qmd` link the revised protocol, data guide, notes, and this implementation plan.
- Confirm `supporting-docs/` is the source documentation area and `docs/` remains generated Quarto output.
- Confirm the revised preregistration protocol, original draft, review report, shopping list, schedule notes, analysis scaffold, templates, decision log, and deviation log are version-controlled.
- Confirm `.gitignore` excludes private data and photo locations, including `data/raw/private/`, `data/raw/photos/`, `private/`, `local/`, and `photos/`.
- Confirm no private images or filled raw diary files are already tracked.

**Deliverables**

- Rendered Quarto website in `docs/`.
- Discoverable implementation plan at `supporting-docs/implementation-plan.md`.
- Updated document links in `README.md` and `index.qmd`.
- Any repository-readiness findings recorded in `notes/decision-log.md` if they affect trial execution.

**Acceptance criteria**

- `quarto render` completes without errors.
- `git status --short` shows only intentional documentation edits.
- Trial-critical documents are reachable from the README or Quarto home page.
- No private photo files or filled private raw data are tracked.

**Risks / failure modes**

- The site fails to render because analysis pages assume non-existent trial data.
- Source docs are accidentally written under `docs/`, then overwritten by Quarto.
- Private files are committed accidentally.

**Mitigations**

- Keep data-dependent analysis pages scaffold-safe until data exist.
- Store source documentation under `supporting-docs/`, `protocol/`, `analysis/`, `R/`, `templates/`, `notes/`, and `reports/`, not `docs/`.
- Run `git status --short` and `git check-ignore -v <private-path>` before committing or pushing.

---

## Phase 1 - Protocol Finalization and Preregistration Package

| Field | Plan |
|---|---|
| Purpose | Freeze the scientific question, estimand, outcomes, schedule rules, exclusion rules, safety rules, and analysis plan before trial data can influence decisions. |
| Timing | Before official run-in completion and before randomized-phase schedule lock. |
| Entry criteria | Phase 0 is complete; the user has reviewed the revised preregistration-ready protocol. |
| Responsible role | Investigator, statistician, and trial coordinator. |
| Repository files | `protocol/preregistration/revised-preregistration-ready-protocol.md`, `protocol/review/expert-stress-test-review.md`, `notes/decision-log.md`, `notes/deviations-log.md`, future `supporting-docs/protocol-amendments.md`, future `supporting-docs/trial-master-file.md`, optional `protocol/preregistration/preregistration-snapshot.md`. |

**Required tasks**

- Declare `protocol/preregistration/revised-preregistration-ready-protocol.md` frozen as the primary source of truth for the trial.
- Verify the primary estimand remains: Snail 92 continuation versus Snail 92 omission with no replacement layer, with the rest of the routine held stable.
- Verify the primary outcome remains Morning Barrier Burden Score (MBBS), derived from dryness, tightness, and barrier comfort before morning skincare.
- Verify secondary, exploratory, safety, and photo-derived outcomes are classified exactly as the protocol states.
- Verify the randomized design: 21-day run-in, 10 periods x 6 nights, 5 continuation and 5 omission periods, maximum run length 2, no strict alternation, transition days 1-2, analyzable days 3-6.
- Verify the decision rule: keep Snail 92 only if omission is worse by at least 0.5 MBBS points, exact randomization inference supports benefit, period patterns are compatible, and no countervailing safety/acne/irritation harm is present.
- Document explicitly that the treatment assignment is unblinded and no placebo, coded jar, sham layer, or replacement product is used.
- Confirm that the schedule is self-generated, unblinded, and locked before randomized-phase start.
- Create a preregistration-style snapshot that records the protocol version, June 7, 2026 trial start date, randomization restrictions, analysis sequence, decision rule, randomization seed, and schedule hash.
- Create a trial master file-style index that lists protocol, templates, schedule materials, logs, data locations, analysis pages, reports, and archival locations.
- Create a protocol-amendment log before trial start. After this phase, every design change must be logged with date, rationale, timing relative to data collection, and effect on analysis.

**Deliverables**

- Frozen protocol or amendment record.
- `supporting-docs/trial-master-file.md`.
- `supporting-docs/protocol-amendments.md`.
- Optional `protocol/preregistration/preregistration-snapshot.md`.
- Updated `notes/decision-log.md` entry documenting the freeze.

**Acceptance criteria**

- A future agent can identify the frozen protocol, decision rule, analysis plan, schedule restrictions, and amendment process without asking the user.
- No design element implies blinded treatment comparison or friend-held allocation.

**Risks / failure modes**

- The trial drifts from the discontinuation question into Snail 92 versus a replacement hydrator.
- Mid-trial reinterpretation of outcomes changes the effective decision rule.
- Protocol amendments are made informally in chat or notes but not captured in the repo.

**Mitigations**

- Keep the central question quoted in the protocol, README, and final reports.
- Use the amendment log for all post-freeze changes.
- Separate primary, sensitivity, and exploratory analysis pages.
- Do not create comparator-product procedures in this trial.

---

## Phase 2 - Materials Procurement and Intervention Readiness

| Field | Plan |
|---|---|
| Purpose | Confirm the participant can administer continuation and omission periods consistently and safely without scrambling for supplies mid-trial. |
| Timing | Before run-in begins, with final confirmation before randomized phase. |
| Entry criteria | Phase 1 design is stable enough to know required products and measurement tools. |
| Responsible role | Trial coordinator, participant, and materials manager. |
| Repository files | `supporting-docs/shopping-list/README.md`, `protocol/printable/printable-shopping-list.docx`, future `supporting-docs/trial-master-file.md`, future materials/accountability section or log. |

**Required tasks**

- Confirm adequate supply of Snail 92 for all continuation periods and current routine products for the full run-in and randomized phase.
- Confirm no replacement moisturizer, generic hydrator, placebo, or coded jar is needed for the primary comparison.
- Confirm the default cleanser, rescue cleanser, Kikumasamune toner/lotion, retinol, Lipikar AP+M, sunscreen, shaving products, and pillowcase schedule are available.
- Confirm photo setup materials: fixed tripod or mount, floor/location markers, consistent background, gray or neutral reference card, and enough private device or drive storage.
- Record product names, lot numbers if available, opening dates, storage location, and any material substitutions.
- Define product handling: same approximate amount, same order, same timing, no intentional new skincare products during randomized phase unless medically necessary.
- Confirm run-in requirements from the protocol: 21 days, final 7-day stability criteria, and one possible 7-day extension.
- Set up a lightweight materials accountability log only for trial-critical items: Snail 92, retinol, cleanser, rescue cleanser, sunscreen, and photo reference card.

**Deliverables**

- Confirmed materials list.
- Lightweight materials/accountability log, either in `supporting-docs/trial-master-file.md` or a separate supporting document.
- Private photo storage path created under the ignored location `data/raw/photos/`.

**Acceptance criteria**

- The user can complete all run-in and randomized-phase routines without changing products because of supply failure.
- The omission period can be administered as "skip Snail 92" with no replacement layer.
- Photo setup can be reproduced without daily improvisation.

**Risks / failure modes**

- Product runs out or a product formulation changes during the trial.
- The photo setup is too hard to reproduce.
- Materials logging becomes burdensome and threatens adherence.

**Mitigations**

- Buy or set aside sufficient product before trial start.
- Keep product logging to start date, lot if available, and deviations.
- Use fixed physical markers for photo position and camera setup.
- Treat exact product mass as optional unless the protocol is amended to require weighing.

---

## Phase 3 - Randomization and Schedule Lock

| Field | Plan |
|---|---|
| Purpose | Generate or verify the treatment schedule under the frozen randomization rules and prevent ad hoc schedule changes after trial start. |
| Timing | After run-in stability is likely and before the randomized phase begins. |
| Entry criteria | Phase 1 protocol freeze complete; Phase 2 materials ready; run-in final 7-day stability criteria are met or expected to be met. |
| Responsible role | Statistician and trial coordinator. |
| Repository files | Future `randomization/generate-randomization.R`, future `randomization/randomization-seed.txt`, future `randomization/treatment-schedule.csv`, future `randomization/schedule_sha256_hash.txt`, `.gitignore`, `supporting-docs/schedule/README.md`, future `supporting-docs/protocol-amendments.md`. |

**Required tasks**

- Implement or verify an R script that enumerates balanced 10-period sequences with 5 continuation and 5 omission periods, maximum run length 2, and no strict alternation.
- Record the randomization seed, generation script, generated schedule, and schedule hash.
- Create participant-facing schedule materials if useful; they may show the full schedule because allocation concealment is not part of the final design.
- Document that the treatment itself is unblinded: on any active day the user knows whether Snail 92 is used or skipped.
- Define handling of missed days, deviations, travel, illness, adverse reactions, product interruptions, and schedule disruptions using the protocol's rules.
- Lock the active randomized schedule. Do not reorder periods, extend periods, or repeat periods after trial start unless the protocol's extension rule or safety rule applies.

**Deliverables**

- Schedule-generation script.
- Randomization seed, schedule-generation script, full schedule, and schedule hash.
- Participant-facing schedule or daily assignment process.
- Schedule lock entry in `notes/decision-log.md`.

**Acceptance criteria**

- The schedule satisfies the protocol's restrictions.
- Assignment records can be joined to daily diary rows by date and period number.
- Schedule files are explicit and version-controlled unless the user intentionally stores working copies elsewhere.
- Rules for disruptions are written before the randomized phase starts.

**Risks / failure modes**

- The schedule accidentally becomes predictable or invalid.
- Concealed files are committed.
- Missed days trigger informal period extensions.
- The user changes the schedule in response to symptoms.

**Mitigations**

- Use a deterministic script and save a hash.
- Confirm the schedule is generated once, hashed, and locked before randomized-phase start.
- Log deviations rather than editing the schedule.
- Use the extension rule only if validity thresholds fail before primary analysis.

---

## Phase 4 - Measurement System Validation and Dry Run

| Field | Plan |
|---|---|
| Purpose | Prove that diary, photo, storage, metadata, and daily workflow procedures are feasible before official data collection depends on them. |
| Timing | During run-in or a short pre-run-in dry run; complete before randomized phase. |
| Entry criteria | Materials and templates are available; photo setup can be assembled. |
| Responsible role | Trial coordinator, data manager, photo workflow owner, and participant. |
| Repository files | `templates/daily_log_template.csv`, `templates/weekly_review_template.csv`, `templates/codebook_template.csv`, future `templates/photo_metadata_template.csv`, future `templates/adverse_event_template.csv`, future `templates/deviation_log_template.csv`, `data/README.md`, future `supporting-docs/photo-workflow.md`, `R/data_validation.R`. |

**Required tasks**

- Create working private copies of CSV templates in `data/raw/private/`. Keep the public templates unchanged except through intentional template updates.
- Test one complete morning diary entry before washing, shaving, or applying products.
- Test one complete evening adherence entry after the routine.
- Test weekly review fields without looking at condition-specific summaries.
- Standardize photo capture: same time of day, before products, same location, same lighting, same background, same camera, rear camera, fixed mount, fixed distance, fixed angle, frontal/left 45/right 45 views, no beauty filters or portrait smoothing.
- Define photo file naming, for example `YYYY-MM-DD_session-<id>_view-front_raw.jpg`, `view-left45`, and `view-right45`.
- Define private photo directory structure under `data/raw/photos/`, with subfolders such as `raw/`, `normalized/`, and `qc/`.
- Test photo transfer from device to private local storage and confirm no photo path is tracked by Git.
- Create or verify a photo metadata template with date, session id, scheduled flag, taken flag, view, filename, private path placeholder, lighting notes, gray-card presence, quality flags, and exclusion reason.
- Test minimal validation: date parsing, required columns, numeric ranges, condition values, missingness summary, and MBBS derivation.
- Define minimum viable data collection if burden becomes difficult: morning MBBS components, evening actual condition/adherence, safety/rescue actions, and scheduled photo metadata.
- Confirm total daily burden is realistic.

**Deliverables**

- Dry-run daily and weekly entries in private working files.
- Draft `supporting-docs/photo-workflow.md`.
- Photo metadata template.
- Validation checklist output or notes.
- Burden assessment recorded in `notes/decision-log.md` if it changes procedures.

**Acceptance criteria**

- A full morning plus evening data capture can be completed on a normal day.
- At least one test photo session can be captured, transferred, named, and matched to metadata.
- Validation helpers can read the CSV structure or the required updates are identified before trial start.
- The user knows the minimum viable fields to protect the primary analysis.

**Risks / failure modes**

- Photos are inconsistently lit or framed.
- Manual CSV entry is too burdensome.
- Photo files and metadata fall out of sync.
- The user starts optimizing behavior based on dry-run impressions.

**Mitigations**

- Use physical markers and a written photo checklist.
- Keep dry-run data out of analysis unless the protocol explicitly allows run-in summaries.
- Use session IDs consistently across diary and photo metadata.
- Do not review condition-specific outcome patterns during dry run or run-in.

---

## Phase 5 - Trial Initiation

| Field | Plan |
|---|---|
| Purpose | Start official trial procedures cleanly, with baseline documentation and first-day capture completed under the frozen plan. |
| Timing | Official trial start date: June 7, 2026. |
| Entry criteria | Phases 0-4 complete; no unresolved safety issue. |
| Responsible role | Trial coordinator and participant. |
| Repository files | `protocol/preregistration/revised-preregistration-ready-protocol.md`, working private daily log, working private photo metadata, `notes/decision-log.md`, `notes/deviations-log.md`, future `supporting-docs/trial-master-file.md`. |

**Required tasks**

- Complete the trial start checklist.
- Record baseline routine, product availability, photo setup, current skin status, and any relevant recent events.
- Confirm routine stability: no new skincare, makeup base product, procedure, device treatment, medication change, intentional diet change, sleep intervention, shaving product change, or environmental exposure plan is being introduced unless allowed by protocol.
- Confirm sunscreen, retinol cadence, cleanser rule, rescue cleanser rule, Lipikar use, and Snail 92 continuation/omission instructions.
- Capture first-day morning diary before products.
- Capture first-day photo session if scheduled by protocol or dry-run plan.
- Complete first evening adherence entry.
- Lock active schedule process for the randomized phase.

**Deliverables**

- Baseline entry in private daily log.
- Baseline photo metadata and private photo files if scheduled.
- Trial start confirmation in `notes/decision-log.md`.
- Any startup deviation recorded in `notes/deviations-log.md` or private equivalent.

**Acceptance criteria**

- Official start date is clear.
- Baseline procedures are complete.
- No unresolved setup issue threatens the first week of data collection.

**Risks / failure modes**

- Trial starts while routine is unstable.
- Baseline is reconstructed from memory later.
- First-day photo or diary is missed because the workflow was not ready.

**Mitigations**

- Use the dry-run checklist before declaring start.
- If final 7-day run-in stability criteria fail, extend run-in once as specified by protocol.
- Log a missed first-day measure rather than inventing data.

---

## Phase 6 - Active Trial Conduct and Monitoring

| Field | Plan |
|---|---|
| Purpose | Execute the trial consistently while preserving data integrity, safety, and interpretation discipline. |
| Timing | From run-in start through the final randomized observation. |
| Entry criteria | Trial initiated; schedule and data capture workflow active. |
| Responsible role | Participant, trial coordinator, data manager, and safety monitor. |
| Repository files | Working private daily and weekly logs, working private photo metadata, `notes/deviations-log.md`, future adverse-event log, `data/README.md`, `analysis/02_quality_checks.qmd`, `R/data_validation.R`. |

**Required tasks**

- Complete daily morning diary before washing, showering, shaving, touching face excessively, or applying products.
- Complete evening adherence log after skincare.
- Capture photos on the protocol schedule: Monday, Wednesday, Saturday by default, before products and under standardized conditions.
- Track intervention adherence: assigned condition, actual condition, Snail 92 used, retinol scheduled/used, cleanser type, rescue cleanser use, Lipikar, sunscreen, and trial-step adherence.
- Log symptoms and safety events, including burning, stinging, irritation, flaking, rash, eyelid involvement, acne flare, retinol pause, cleanser rescue, and trial stoppage.
- Log protocol deviations, travel, illness, medication changes, sun/wind exposure, heavy sweating, mask use, shaving, pillowcase changes, and other confounders defined by protocol.
- Perform weekly or block-level QC limited to completeness, date continuity, range checks, required fields, photo counts, photo file backup, and safety review.
- Back up private raw data and photos to a second private location.
- Monitor photo quality for objective capture failures such as blur, wrong view, missing gray card, product applied before photo, or severe lighting mismatch.
- Do not use mid-trial visual review or condition-specific summaries to change behavior or reinterpret outcomes.
- Apply rules for pausing, continuing, terminating early, or safety rescue as written in the protocol.
- Maintain separation between raw, cleaned, and derived data. Do not edit raw entries after export except by adding clearly versioned correction notes.

**Deliverables**

- Current private daily log and weekly review log.
- Current private photo archive and metadata.
- Deviation and adverse-event entries as needed.
- Weekly QC notes or generated QC output.
- Backup confirmation.

**Acceptance criteria**

- Daily MBBS components are captured on enough analyzable days to protect the primary analysis.
- Photo sessions are either captured as scheduled or marked missing without make-up bias.
- Deviations and safety events are logged near real time.
- No informal primary analysis is run before data lock.

**Risks / failure modes**

- Adherence falls because the workflow is too heavy.
- The user selectively focuses on outcomes that match expectations.
- Safety symptoms are minimized to preserve the trial.
- Photo QC becomes outcome inspection.
- Raw and processed files become mixed.

**Mitigations**

- Use the minimum viable data collection rule when needed.
- Keep QC scripts from showing condition-specific outcome summaries during active conduct.
- Treat safety rescue as part of the protocol, not as failure.
- Store raw files separately from processed files and use script-generated outputs only.

---

## Phase 7 - Closeout After Final Observation

| Field | Plan |
|---|---|
| Purpose | Close the data-collection period without retrospective editing, then freeze raw data, photo archives, and logs for analysis. |
| Timing | Immediately after the final scheduled observation or early termination. |
| Entry criteria | Final planned randomized observation completed, extension decision made, or safety termination invoked. |
| Responsible role | Trial coordinator and data manager. |
| Repository files | Working private raw logs, private photo archive, `notes/deviations-log.md`, future `supporting-docs/closeout-checklist.md`, future adverse-event log, future `supporting-docs/trial-master-file.md`. |

**Required tasks**

- Complete final morning diary and final scheduled photo capture if applicable.
- Complete final evening adherence/safety log.
- Reconcile product/accountability notes if useful: product availability, rescue actions, retinol pauses, and material substitutions.
- Review protocol deviations for completeness, not for outcome favorability.
- Review adverse events and safety rescues for completeness.
- Freeze raw diary, weekly review, adverse-event, deviation, and photo metadata files by copying them to a dated private raw-data archive.
- Freeze private photo archive in a dated private folder.
- Record raw-data freeze timestamp and storage path in the trial master file or closeout checklist.
- Document missingness and exclusion candidates before running outcome models.
- Decide whether the protocol extension rule applies before any schedule reveal or primary analysis.

**Deliverables**

- Completed closeout checklist.
- Frozen private raw-data archive.
- Frozen private photo archive.
- Final deviation and adverse-event logs.
- Extension/no-extension decision record.

**Acceptance criteria**

- Raw data and photos are frozen before cleaning.
- The decision to extend, stop, or analyze is documented before looking at primary results.
- Missingness and likely exclusions are listed before modeling.

**Risks / failure modes**

- Late edits are made directly to raw files.
- Photo files remain scattered across devices.
- Missingness decisions are influenced by early outcome plots.

**Mitigations**

- Use dated archive folders and checksum or file listing.
- Make corrections through separate cleaning scripts or correction logs.
- Run only structural completeness checks before analysis.

---

## Phase 8 - Data Cleaning and Quality Control

| Field | Plan |
|---|---|
| Purpose | Convert frozen raw data into auditable, analysis-ready datasets without changing the raw record. |
| Timing | After Phase 7 closeout and before primary analysis. |
| Entry criteria | Frozen raw logs and photo metadata exist; exclusion candidates documented. |
| Responsible role | Data manager and statistician. |
| Repository files | `analysis/01_data_import.qmd`, `analysis/02_quality_checks.qmd`, `R/data_validation.R`, `R/scoring.R`, `templates/codebook_template.csv`, `data/README.md`, `data/metadata/`, private raw-data path, `data/processed/` only for intentionally shareable processed outputs. |

**Required tasks**

- Import frozen raw daily log, weekly review, adverse-event log, deviation log, and photo metadata from the private source path.
- Validate dates, day numbers, phase values, period numbers, period days, treatment assignments, actual condition, adherence fields, expected ranges, binary fields, and categorical values.
- Validate MBBS components and derive MBBS using `R/scoring.R`.
- Validate schedule joins: each randomized date maps to exactly one assigned period and condition.
- Validate missingness by field, day, period, and phase.
- Validate adherence thresholds and valid-period flags according to the protocol.
- Validate photo metadata: scheduled photo days, session IDs, view completeness, filename conventions, private path placeholders, quality flags, and exclusion reasons.
- Produce cleaning script or Quarto output that records every transformation.
- Produce or update a data dictionary in `data/metadata/`.
- Create derived analysis datasets from raw inputs, preserving raw files unchanged.
- Produce QC tables and figures for completeness, ranges, adherence, deviations, and missingness.
- Flag questionable observations rather than silently dropping them.
- Keep private photos outside Git and avoid committing sensitive raw data unless the user intentionally prepares a public release.

**Deliverables**

- Clean daily analysis dataset.
- Clean weekly review dataset.
- Clean adverse-event and deviation datasets.
- Clean photo metadata dataset.
- Data dictionary.
- QC report and QC tables/figures.
- Cleaning audit trail.

**Acceptance criteria**

- Every exclusion flag is explainable from frozen raw data and prespecified rules.
- Raw data are unchanged after freeze.
- Derived datasets can be regenerated by rerunning scripts or Quarto pages.
- QC report identifies missingness, deviations, valid periods, and photo availability.

**Risks / failure modes**

- Manual cleaning hides decisions.
- Invalid dates or treatment joins contaminate primary analysis.
- Questionable rows are dropped without an audit trail.
- Private data are accidentally written to public paths.

**Mitigations**

- Use scripted cleaning only.
- Write all path-sensitive code so private input and public output locations are explicit.
- Save exclusion flags as columns.
- Inspect `git status --short` before any commit.

---

## Phase 9 - Photo Normalization and Image-Derived Outcomes

| Field | Plan |
|---|---|
| Purpose | Turn private standardized photos into reproducible, documented image-derived variables while keeping private images out of the public repo. |
| Timing | After photo archive freeze and before primary or secondary image-outcome modeling. |
| Entry criteria | Frozen private photo archive and clean photo metadata exist. |
| Responsible role | Photo workflow owner, data manager, and statistician. |
| Repository files | Future `supporting-docs/photo-workflow.md`, future `R/photo_normalization.R`, `analysis/05_exploratory_analysis.qmd`, `data/metadata/`, private photo directory, `.gitignore`. |

**Required tasks**

- Confirm private photo directory structure and backup:
  - `data/raw/photos/raw/`
  - `data/raw/photos/normalized/`
  - `data/raw/photos/qc/`
- Link each photo session to trial date, phase, period number, period day, scheduled flag, and treatment period through metadata, not through visual inspection.
- Confirm view completeness for frontal, left 45, and right 45 images.
- Apply objective photo-exclusion criteria before outcome modeling: wrong lighting, missing view, product already applied, major blur, major pose mismatch, missing or unusable reference card if required for a metric.
- Define normalization steps: color reference or gray-card correction, lighting normalization, crop or region of interest, scale handling, and quality thresholds.
- Define fixed regions of interest from the protocol: left cheek, right cheek, central forehead, and chin.
- Generate prespecified image-derived variables, especially CIELAB median `a*` redness if gray-card normalization is available.
- Mark exploratory image features separately, such as R/G redness ratio, local texture variance, and any manual visual scoring.
- Save scripts and metadata publicly, but do not save private source photos in Git.
- Document all image-processing exclusions before outcome modeling.
- Produce a photo QC summary table with counts by scheduled session, view, usable status, exclusion reason, and period.

**Deliverables**

- Photo workflow document.
- Photo metadata with QC and exclusion flags.
- Reproducible photo-normalization script.
- Image-derived analysis dataset.
- Photo QC summary.

**Acceptance criteria**

- Image-derived variables can be regenerated from private photos using public code plus documented private paths.
- Exclusions are made before treatment-result interpretation.
- Prespecified image outcomes and exploratory image features are clearly separated.
- No private photo file is tracked.

**Risks / failure modes**

- Lighting variation dominates redness metrics.
- Region-of-interest selection is adjusted after seeing results.
- Blog photos are handpicked to tell a stronger story.
- Private face images leak into the public repo.

**Mitigations**

- Use fixed photo setup and gray-card normalization.
- Predefine ROI rules and exclusion criteria in `supporting-docs/photo-workflow.md`.
- Use clearly labeled public demo images for method explanation, not participant trial photos.
- Run `git status --short` and check ignored paths before committing.

---

## Phase 10 - Primary Analysis

| Field | Plan |
|---|---|
| Purpose | Execute the prespecified primary analysis and apply the decision rule before exploratory interpretation. |
| Timing | After Phases 8 and 9 are locked and the self-generated schedule is verified against the saved seed/script/hash. |
| Entry criteria | Clean analysis datasets, valid-period flags, photo exclusions, and primary analysis code are locked. |
| Responsible role | Statistician. |
| Repository files | `analysis/03_primary_analysis.qmd`, `R/analysis_models.R`, `R/scoring.R`, `R/plotting.R`, cleaned private or public analysis datasets, `data/metadata/`, `tables/`, `figures/`, `outputs/`. |

**Required tasks**

- Verify the randomized schedule against the saved hash or generation record.
- Filter primary analysis population: randomized phase, period days 3-6, valid periods, MBBS available, assigned condition known, no full trial stoppage.
- Calculate the primary statistic: mean MBBS during omission minus mean MBBS during continuation.
- Run exact randomization inference under the same restricted randomization scheme used to generate the schedule.
- Report uncertainty and the randomization-reference result without using sensitivity or exploratory analyses as a gateway.
- Produce descriptive plots: daily MBBS over time, shaded treatment periods, transition days, retinol pauses, cleanser rescues, component outcomes, and period-level MBBS means.
- Integrate formal photo-derived outcomes only according to their prespecified role. Do not let exploratory image features override MBBS.
- Check practical interpretation against the decision rule: effect size >= 0.5 MBBS, randomization support, period compatibility, and no countervailing safety/acne/irritation harm.
- Save primary analysis outputs reproducibly.

**Deliverables**

- Primary analysis report page.
- Primary result table.
- Randomization inference reference distribution figure.
- MBBS time-series and period-summary figures.
- Decision-rule checklist.

**Acceptance criteria**

- The primary result can be regenerated from locked data and code.
- The analysis follows the protocol's estimand and valid-period rules.
- Exploratory findings are not used to rescue a weak primary result.
- The decision implication is stated with uncertainty.

**Risks / failure modes**

- Analysis code silently changes the primary population.
- Sensitivity analyses influence the primary conclusion before the primary result is recorded.
- Post-treatment variables such as rescue cleanser or retinol pause are incorrectly adjusted away in the primary model.

**Mitigations**

- Store primary population filters visibly in `analysis/03_primary_analysis.qmd`.
- Run and save the primary analysis before sensitivity pages.
- Treat rescue actions as part of the treatment-policy estimand unless the protocol is amended before analysis.

---

## Phase 11 - Sensitivity, Exploratory, and Learning Analyses

| Field | Plan |
|---|---|
| Purpose | Evaluate robustness, explore secondary outcomes, and learn about feasibility without changing the primary decision rule. |
| Timing | After Phase 10 primary analysis is recorded. |
| Entry criteria | Primary analysis outputs are saved. |
| Responsible role | Statistician, data manager, and report author. |
| Repository files | `analysis/04_sensitivity_analyses.qmd`, `analysis/05_exploratory_analysis.qmd`, `R/analysis_models.R`, `R/plotting.R`, `figures/`, `tables/`, `outputs/`. |

**Required tasks**

- Run lag and transition sensitivity analyses:
  - primary window period days 3-6
  - period days 2-6
  - all period days
  - period days 4-6
  - same-condition adjacent periods without transition exclusion for the second period
- Assess sensitivity to missing data, invalid periods, deviations, carryover, time trends, measurement noise, photo quality, and image-normalization choices.
- Summarize secondary outcomes: individual MBBS components, flaking, redness, burning, stinging, itching, irritation, weekly global ratings, rescue actions, retinol pauses, sunscreen adherence, and image-derived redness.
- Summarize safety and harm outcomes, especially whether continuation worsens irritation, redness, acne, or safety events.
- Keep acne, pore appearance, texture, and qualitative photo review clearly exploratory unless the protocol specifies otherwise.
- Perform exploratory qualitative photo review only after the formal photo-exclusion and image-derived metric datasets are locked.
- Document lessons learned: feasibility, daily burden, adherence, missingness, photo workflow quality, template adequacy, and what should change in a future trial.

**Deliverables**

- Sensitivity analysis report.
- Exploratory analysis report.
- Robustness summary table.
- Feasibility and lessons-learned notes.

**Acceptance criteria**

- Sensitivity analyses are labeled supportive and do not redefine the primary conclusion.
- Exploratory results are separated visually and textually from confirmatory results.
- Any disagreement between primary and sensitivity findings is reported plainly.

**Risks / failure modes**

- Exploratory photo or acne findings become the real decision criterion.
- Robustness checks are selectively reported.
- Lessons learned are omitted because they are not flattering.

**Mitigations**

- Use separate Quarto pages for sensitivity and exploratory work.
- Report all prespecified sensitivity analyses.
- Include a feasibility section even if adherence was imperfect.

---

## Phase 12 - Final Decision Report and Public-Facing Writeup

| Field | Plan |
|---|---|
| Purpose | Convert the locked analysis into a private decision and a public explanation that is useful, honest, and appropriately limited. |
| Timing | After primary, sensitivity, exploratory, and photo analyses are complete. |
| Entry criteria | Analysis outputs are complete; private/public boundaries are clear. |
| Responsible role | Report author, statistician, and privacy reviewer. |
| Repository files | Future `reports/final/private-decision-report.qmd`, future `reports/final/public-blog-post.qmd`, `analysis/*.qmd`, `figures/`, `tables/`, `outputs/`, private photo archive, `.gitignore`. |

**Required tasks**

- Produce a private technical decision report that includes:
  - protocol version
  - adherence and missingness
  - valid periods
  - primary MBBS result
  - randomization inference result
  - secondary outcomes
  - photo-derived outcomes
  - safety and acne harm review
  - sensitivity analysis summary
  - final decision: keep Snail 92, remove Snail 92, or uncertain/discontinue by default
- Produce a public blog-post-style summary that explains:
  - the personal decision question
  - why omission, not replacement, was tested
  - why the trial was unblinded
  - how randomization and prespecification reduced bias
  - what the primary result means and does not mean
  - how uncertainty and limitations affect interpretation
  - why personal evidence is not general skincare advice
- Use a publicly available demo photo for any public image-method graphics; do not publish participant face photos.
- Remove or avoid participant photos, sensitive raw data, unredacted notes, private paths, and unintended personal information from public outputs.
- Avoid medical claims about COSRX Snail 92 and avoid product endorsement language.
- State that the result applies to this user, this routine, this trial window, and this measurement system.

**Deliverables**

- Private decision report.
- Public blog post draft or Quarto report.
- Public-safe tables and figures.
- Privacy review checklist.

**Acceptance criteria**

- The private report supports a practical decision: worth keeping, removable, or uncertain/discontinue by default.
- The public writeup does not overclaim and does not imply general dermatology advice.
- No participant image or raw sensitive data is committed unintentionally.

**Risks / failure modes**

- The public story overstates a single-person result.
- A demo image is mistaken for trial evidence.
- Private data leak through rendered HTML, image EXIF, paths, or captions.

**Mitigations**

- Use limitation language from the protocol.
- Label demo images clearly as illustrative and not part of the trial data.
- Strip EXIF from any intentionally published images.
- Review `docs/`, `figures/`, `tables/`, `outputs/`, and `reports/` before publication.

---

## Phase 13 - Archival, Reproducibility, and Future Reuse

| Field | Plan |
|---|---|
| Purpose | Preserve a final, reproducible, privacy-respecting record of the trial and capture improvements for any future n-of-1 iteration. |
| Timing | After final reports are approved. |
| Entry criteria | Phase 12 complete; public/private boundary reviewed. |
| Responsible role | Reproducible research engineer and trial coordinator. |
| Repository files | `README.md`, `index.qmd`, `_quarto.yml`, `renv.lock`, `DESCRIPTION`, `protocol/`, `supporting-docs/`, `analysis/`, `R/`, `templates/`, `reports/`, `data/metadata/`, `docs/`, `notes/decision-log.md`. |

**Required tasks**

- Render the final Quarto site.
- Record package versions and session info in a reproducibility appendix or output file.
- Update README with final status and links to public-safe reports.
- Archive final protocol, amendments, templates, analysis code, public reports, QC summaries, and public-safe generated outputs.
- Record where private raw data and photos are stored outside Git, without exposing sensitive paths if the public repo will be shared.
- Confirm filled raw data and identifiable photos remain out of public Git unless intentionally prepared for release.
- Tag a final release or create a final commit after review.
- Record recommendations for a future trial, such as whether to simplify data capture, improve photo setup, change retinol cadence before run-in, or run a separate replacement-product trial.

**Deliverables**

- Final rendered `docs/` site.
- Reproducibility instructions and session info.
- Final commit or release tag.
- Future-trial recommendations.
- Private archive inventory.

**Acceptance criteria**

- A future agent can reproduce public outputs from the committed code and public data/templates, with private-data steps clearly documented.
- The final repo does not contain accidental private data.
- The project has a clear endpoint and a clear recommendation for future reuse.

**Risks / failure modes**

- Final outputs cannot be regenerated because package versions or private-data assumptions are undocumented.
- Private archive locations are forgotten.
- Future trial lessons are lost.

**Mitigations**

- Keep `renv.lock` current.
- Save session info.
- Maintain the trial master file through closeout.
- Add a final lessons-learned section before archiving.

## Trial Start Checklist

- [ ] Quarto render works from repository root.
- [ ] README and Quarto home page link the implementation plan, protocol, data guide, and analysis scaffold.
- [ ] Revised protocol is frozen or amended.
- [ ] Protocol amendment log exists.
- [ ] Trial master file or index exists.
- [ ] Materials are available and logged.
- [ ] Private raw data and photo directories are created under ignored paths.
- [ ] Daily, weekly, photo metadata, adverse-event, and deviation templates are ready.
- [ ] Photo setup is marked and tested.
- [ ] Dry-run diary and photo transfer completed.
- [ ] Self-generated unblinded randomization schedule created, hashed, and locked.
- [ ] Schedule generated or schedule-generation process ready.
- [ ] Safety rescue and stopping rules are visible to the participant.
- [ ] Minimum viable data collection rule is visible.

## Data Lock Checklist

- [ ] Final observation completed or early termination documented.
- [ ] Extension rule applied or explicitly declined before primary analysis.
- [ ] Raw diary, weekly review, adverse-event, deviation, and photo metadata files frozen.
- [ ] Private photo archive frozen and backed up.
- [ ] Missingness summarized before modeling.
- [ ] Protocol deviations reviewed for completeness.
- [ ] Photo exclusions documented before outcome modeling.
- [ ] Primary analysis script locked.
- [ ] Schedule script, seed, and hash verified.

## Future Agent Execution Order

1. Complete Phase 0 render/readiness checks and update document links.
2. Build the Phase 1 trial master file and amendment log.
3. Add missing raw-data templates for photo metadata, adverse events, and deviations.
4. Draft the photo workflow and test one dry-run capture/metadata cycle.
5. Implement the self-managed randomization script and record the seed, schedule, and hash.
6. Extend data validation and scoring helpers only after templates are finalized.
7. Run trial conduct milestones using the checklists above.
8. After closeout, implement cleaning, photo normalization, primary analysis, sensitivity analysis, reports, and archival in order.

## Resolved Design Decisions

These decisions were resolved on May 26, 2026 and should be treated as part of the final design unless formally amended:

- The friend-held schedule is removed. The investigator generates, records, hashes, and locks the unblinded schedule.
- Official trial start date is June 7, 2026.
- Filled raw CSVs are stored under `data/raw/private/`.
- Participant photo files are stored under `data/raw/photos/`.
- Participant face photos will not be published; public image-method graphics use publicly available demo photos.
- Consumer hydration-meter readings are excluded.
