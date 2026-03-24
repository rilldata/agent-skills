# Rilldata Agent Skills

Installable, modular skills for AI agents working with Rill.

## Installation

### Using npx skills

```bash
npx skills add rilldata/agent-skills
```

### As a Claude Code plugin

```bash
/plugin marketplace add rilldata/agent-skills
/plugin install rill@rilldata
```

> **Note:** The MCP tools require a running Rill Developer server (`rill start`) on `localhost:9009`.

## Contents

- `AGENTS.md`: high-level instructions for developing a Rill project
- `skills/rill-<resource type>`: contains detailed instructions and a syntax reference for a resource type in Rill (model, metrics view, etc.)

## How it works

This repository is synced from the output of `rill init --agent agentsmd`. These are the same instructions that power the first-party coding assistant included in Rill.
