# Rilldata Agent Skills

Installable, modular skills for AI agents working with Rill.

## Installation

If this repository is published on GitHub, install with:

```bash
npx skills add rilldata/agent-skills
```

Then agents can use `rilldata` or the resource-specific router skills.
Project-level configuration guidance (`rill.yaml`) is included in `rilldata`.

## Included Skills

- `skills/rilldata`
  - Umbrella skill focused on Rill and project file authoring.
  - Built from canonical sources:
    - `runtime/ai/instructions/data` in `rilldata/rill`
    - `https://docs.rilldata.com/reference/project-files`
- `skills/rill-connector`
  - Router skill for connector-focused tasks.
- `skills/rill-model`
  - Router skill for model-focused tasks.
- `skills/rill-metrics-view`
  - Router skill for metrics-view-focused tasks.
- `skills/rill-explore`
  - Router skill for explore-dashboard-focused tasks.
- `skills/rill-canvas`
  - Router skill for canvas-dashboard/component-focused tasks.

## Structure

- `skills/rilldata/SKILL.md`: concise router for agents
- `skills/rilldata/rules/*.md`: modular rules with source links
- `skills/rilldata/AGENTS.md`: compiled reference guide
- `skills/rill-*/SKILL.md`: lightweight router skills that reference the shared canonical rules in `skills/rilldata/rules/*` (excluding project config, which is in `rilldata`)
- `packages/rilldata-build/`: sync/build/validate tooling

