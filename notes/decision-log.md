# Decision Log

This file records repository, protocol-implementation, and analysis decisions that affect reproducibility.

## 2026-05-26

- Created a public R/Quarto scaffold for the Snail 92 n-of-1 discontinuation trial.
- Treated `protocol/preregistration/revised-preregistration-ready-protocol.md` as the primary source of truth.
- Preserved the original protocol draft and expert stress-test report as provenance instead of rewriting or deleting them.
- Organized printable DOCX materials under `protocol/printable/`.
- Added lightweight R helper files rather than a package structure, because this is a personal self-experiment scaffold and not a full software package.
- Added privacy-oriented gitignore rules for private data, identifiable photos, concealed schedules, and product keys.
- Initialized `renv` for project-level R dependency management.
- Added `DESCRIPTION` to declare direct R/Quarto analysis dependencies and `renv.lock` to record resolved package versions.
- Expanded README license and disclaimer language for a public self-experiment repository.
- Moved source-only documentation notes from `docs/` to `supporting-docs/` so `docs/` can contain the rendered Quarto website for GitHub Pages.
- Changed Quarto `output-dir` from `_site` to `docs`.
- Created `supporting-docs/implementation-plan.md` as the trial-coordinator-style operational plan from preparation through archival.
- Resolved final implementation decisions before trial start: no friend-held schedule, official trial start date June 7, 2026, filled raw CSVs stored under `data/raw/private/`, participant photos stored under `data/raw/photos/`, no public participant face photos, and no consumer hydration-meter readings.
- Added `supporting-docs/protocol-amendments.md` to document those final design updates before randomized data collection.
