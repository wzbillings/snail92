# Data Handling

This directory is for trial data and metadata. Treat it as the boundary between private data collection and reproducible public analysis.

## Folders

- `raw/`: original exports from diary forms, spreadsheets, safety logs, deviation logs, and photo metadata. Do not edit raw exports by hand.
- `processed/`: cleaned and analysis-ready files created from raw data by scripts or Quarto documents.
- `metadata/`: codebooks, validation reports, data-processing notes, and dataset version notes.

## Privacy

Do not commit identifiable face photos, private notes, unredacted health information, concealed randomization schedules, or friend-only product keys unless the repository owner has intentionally prepared those files for public release.

Photo files should generally remain outside git. If photo-derived metrics are made public, prefer non-identifying tabular summaries and document how they were generated.

## Expected Data Files

The revised protocol describes these core tables:

- daily diary table
- weekly review table
- adverse event table
- protocol deviation table
- photo metadata table

Use the CSV templates in `templates/` as starting points. Update `metadata/` with a codebook whenever fields change.

