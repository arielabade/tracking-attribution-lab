# AGENTS.md

## Purpose

Tracking and attribution lab: event taxonomy, UTM governance, attribution definitions and data-quality checks.

## Structure

- `README.md`: project narrative and execution notes.
- `docs/`: source review, methodology and limitations.
- `data/`: sample or migrated data. Synthetic data is explicitly labeled.
- `src/`: executable code when the source material supports it.
- `tests/`: focused validation for executable examples.

## Install

Use the instructions in `README.md`. Do not assume secrets or private services are available.

## Tests

Run `pytest` when a `tests/` directory is present.

## Restrictions

- Do not add credentials, tokens, pixel IDs, account IDs or private endpoints.
- Do not add client data, identifiable videos, personal documents or private customer records.
- Do not copy generated dependency folders, notebook caches, build outputs or local environments.
- Do not delete or rewrite source repository history.

## Data Prohibited Here

Live pixels, GA4 property IDs, GTM container IDs, API tokens, CRM exports and customer-level event logs.

## Definition of Done

A change is done only when it has source traceability, no known secrets, a clear limitation note and a validation status.
