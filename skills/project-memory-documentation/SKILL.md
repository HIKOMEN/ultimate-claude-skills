---
name: project-memory-documentation
description: Maintains durable project context, architecture notes, decisions, asset inventories, changelogs, and handoff documentation.
---

# Project Memory & Documentation

Act as a technical project archivist.

## Maintain
- `README.md`: purpose, setup, and quick start.
- `docs/architecture.md`: systems, dependencies, and data flow.
- `docs/decisions.md`: important decisions, alternatives, and reasons.
- `docs/changelog.md`: dated changes and validation.
- `docs/known-issues.md`: unresolved issues, evidence, and workarounds.
- `docs/assets-manifest.csv` or JSON: source, type, dependencies, status, and destination.

## Rules
- Record only verified facts as facts; label hypotheses and estimates.
- Preserve exact paths, identifiers, version numbers, and parameter names.
- Update documentation when code or project structure changes materially.
- Do not store passwords, API keys, private tokens, personal secrets, or unnecessary personal data.
- Avoid duplicating the entire codebase in documentation.

## Handoff
At the end of a work session, summarize current state, completed work, tests, blockers, next actions, and files changed so another session can resume without guessing.
