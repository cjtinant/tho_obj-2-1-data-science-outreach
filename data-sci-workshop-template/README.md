# Data Science Workshop Template

Reusable shell for future workshop instances.
Keep this in sync with the active workshop instance as it matures.

## Instantiating a new workshop

1. Copy this folder and rename it for the new workshop
   e.g. `cp -r data-sci-workshop-template/ environmental-data-workshop/`
2. Populate `01_data/` with the new dataset
3. Adapt scripts in `04_scripts/` to the new dataset
4. Update `README.md` and `PARKING.md` for the new instance
5. Archive the completed instance to `06_archive/` after OSF registration

## Folder structure

| Folder | Contents |
|---|---|
| `00_admin/` | Registration, Zoom link, logistics |
| `01_data/` | Raw and cleaned datasets (large files → Drive) |
| `02_docs/` | Working docs — facilitator guide, handouts, slide deck |
| `03_outputs/` | Finalized PDFs exported from `02_docs/` |
| `04_scripts/` | R scripts — student-facing and facilitator versions |
| `05_references/` | Source materials, scope documents |
| `06_archive/` | Completed run archived after OSF registration |

