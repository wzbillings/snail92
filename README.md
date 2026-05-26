# Snail 92 N-of-1 Discontinuation Trial

This repository is a public-facing reproducible-research scaffold for a personal n-of-1 skincare trial evaluating COSRX Advanced Snail 92 All In One Cream within an otherwise stable routine.

The central trial question is:

> Can Snail 92 be removed from the current routine without worsening skin outcomes, while keeping the rest of the routine unchanged?

This is a personal self-experiment and reproducible analysis project. It is not medical advice, not a formal clinical trial, and not a product endorsement.

## Status

Current status: **scaffold/preregistration**.

The revised preregistration-ready protocol is present and treated as the source of truth. Data collection and final analysis have not been completed in this scaffold.

Planned official trial start date: **June 7, 2026**.

## Repository Structure

```text
.
|-- README.md
|-- LICENSE.md
|-- .gitignore
|-- DESCRIPTION
|-- renv.lock
|-- snail92.Rproj
|-- _quarto.yml
|-- index.qmd
|-- docs/
|   `-- rendered Quarto website for GitHub Pages
|-- protocol/
|   |-- preregistration/
|   |-- original-draft/
|   |-- review/
|   `-- printable/
|-- supporting-docs/
|   |-- shopping-list/
|   |-- schedule/
|   `-- background/
|-- data/
|   |-- raw/
|   |-- processed/
|   |-- metadata/
|   `-- README.md
|-- R/
|-- analysis/
|-- reports/
|   |-- interim/
|   `-- final/
|-- figures/
|-- tables/
|-- outputs/
|-- templates/
`-- notes/
```

## Protocol and Provenance

The protocol audit trail is preserved:

- `protocol/preregistration/`: revised preregistration-ready protocol and primary source of truth.
- `protocol/original-draft/`: original draft protocol.
- `protocol/review/`: expert stress-test/review report.
- `protocol/printable/`: printable protocol, schedule, and shopping/materials documents.
- `supporting-docs/implementation-plan.md`: operational milestone plan from preparation through final analysis, reporting, and archival.
- `supporting-docs/protocol-amendments.md`: audit trail for final design updates made before trial start.

The revised protocol supersedes earlier documents where they conflict.

## Quarto Rendering

Render the website from the repository root:

```bash
quarto render
```

The rendered site is written to `docs/` so GitHub Pages can serve it from the `main` branch. The analysis pages currently contain placeholders and reproducible structure, not fabricated results.

## Dependency Management

This project uses `renv` for R dependency management.

On a new machine or after cloning the repository, restore the recorded R package environment from the lockfile:

```r
install.packages("renv") # if renv is not already installed
renv::restore()
```

When adding or updating R packages intentionally, update the project library and lockfile:

```r
renv::install("package-name")
renv::snapshot()
```

The project dependency list is declared in `DESCRIPTION`, and exact resolved package versions are recorded in `renv.lock`. The local `renv/library/` directory is not committed. The project `.Rprofile` prepends the restored project library when it exists.

## Data Handling

Use `templates/` to create working data-entry files. Store data according to the guidance in `data/README.md`.

- `data/raw/`: original exported diary, weekly review, safety, deviation, and photo metadata files. Keep raw data unchanged after export.
- `data/processed/`: cleaned, validated, analysis-ready datasets derived from raw data.
- `data/metadata/`: codebooks, data dictionaries, validation notes, and processing logs.
- `figures/`, `tables/`, and `outputs/`: generated artifacts from analysis scripts and Quarto reports.

Do not commit identifiable photos, private notes, unredacted sensitive data, or files that were not intentionally prepared for public release. The final design is unblinded; any treatment schedule committed to the repository must be intentionally generated, hashed, and locked.

## Analysis Boundaries

The repository separates analysis types intentionally:

- **Preregistered analyses** are implemented in `analysis/03_primary_analysis.qmd` and should follow the revised protocol before outcome-driven exploration.
- **Sensitivity analyses** belong in `analysis/04_sensitivity_analyses.qmd` and should evaluate prespecified robustness checks such as transition-day handling and valid-period assumptions.
- **Exploratory analyses** belong in `analysis/05_exploratory_analysis.qmd` and must not be used to override the primary decision rule.

Raw data should not be edited directly. Processed data should be reproducibly generated from raw inputs by scripts or Quarto documents.

## R Helpers

The `R/` directory contains scaffold helpers for package checks, data validation, scoring, analysis models, and plotting. These files are intentionally lightweight and should be extended only as needed during data collection and analysis.

## License

This code is licensed under the GNU Affero General Public License v3.0. In brief, AGPL-3.0 allows use, copying, modification, and redistribution under copyleft terms, and it includes source-sharing obligations for modified versions made available over a network. See `LICENSE.md` for the full license text.

## Disclaimer

This project is an independent, unofficial personal self-experiment and reproducible-research software project for organizing, analyzing, and reporting an n-of-1 skincare discontinuation trial. It is not produced, reviewed, endorsed, or approved by COSRX, any skincare or medical product manufacturer, the maintainer's employer, a clinician, an institutional review board, a regulator, or any public-health or medical authority unless explicitly stated.

The repository, analysis code, Quarto reports, templates, and any future outputs are provided for informational, educational, and exploratory purposes only. They are not medical advice, dermatology guidance, a clinical trial publication package, a clinical recommendation, a safety certification, or a product endorsement. The project may contain errors, omissions, software defects, misclassified diary entries, incomplete data, biased self-reports, nonstandard measurements, missing photos, incorrect derived scores, or analyses that differ from the preregistered intent if not carefully reviewed.

Most of the initial repository scaffold and code was written with substantial assistance from a large language model. A human maintainer should review generated code, inspect data-processing steps, exercise the analysis workflow, and check core functionality before relying on any outputs. This project has not undergone formal clinical validation, independent statistical review, peer review, security review, accessibility review, or the quality-assurance processes used for regulated medical research or clinical decision systems.

Users should verify all data, summaries, visualizations, derived scores, model outputs, and conclusions against the original protocol, raw source data, and any relevant professional guidance before using them for research, communication, personal skincare decisions, clinical judgment, purchasing decisions, or any other decision-making purpose.

Skincare products can cause irritation, allergic reactions, acne flares, barrier disruption, or other adverse effects. Results from one person's self-experiment may not generalize to anyone else. Use of this project and any associated code, data products, reports, or outputs is at the user's own risk. To the maximum extent permitted by applicable law, the maintainer disclaims responsibility and liability for any decisions, actions, omissions, losses, damages, or consequences arising from use of, reliance on, or inability to use the project or its outputs.
