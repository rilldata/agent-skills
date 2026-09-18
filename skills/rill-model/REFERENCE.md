# Rill Model Property Quick Reference

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `type` | string | required | Must be `model` |
| `materialize` | boolean | auto | `true` for cross-connector, `false` for same-connector |
| `incremental` | boolean | `false` | Enable incremental data loading |
| `connector` | string | — | Input connector name (e.g., `bigquery`, `snowflake`, `duckdb`) |
| `sql` | string | required | SQL query — plain SELECT, no trailing semicolon |
| `partitions` | object | — | Glob-based or SQL-based partition configuration |
| `state` | object | — | Watermark state for incremental models (alternative to partitions) |
| `output.connector` | string | default OLAP | Output connector (e.g., `clickhouse`, `duckdb`) |
| `output.incremental_strategy` | string | varies | `partition_overwrite`, `merge`, or `append` |
| `output.unique_key` | array | — | Columns for merge deduplication |
| `output.order_by` | string | — | Required for ClickHouse output |
| `output.partition_by` | string | — | Column/expression for table partitioning |
| `output.ttl` | string | — | ClickHouse data retention (e.g., `event_time + INTERVAL 90 DAY DELETE`) |
| `refresh.cron` | string | — | Cron schedule for source model refresh |
| `change_mode` | string | `reset` | How spec changes apply: `reset`, `manual`, or `patch` |
| `dev` | object | — | Development-only property overrides (e.g., limited partitions) |
| `timeout` | string | — | Max ingestion wait time (e.g., `72h`) |
| `pre_exec` | string | — | SQL to run before main query (DuckDB/ClickHouse) |
| `post_exec` | string | — | SQL to run after main query (DuckDB/ClickHouse) |
| `stage.connector` | string | — | Staging connector for incompatible source→output pairs |
| `stage.path` | string | — | Staging path (e.g., `s3://bucket/staging/`) |

See [SKILL.md](SKILL.md) for full examples, dialect-specific notes, and the complete JSON schema.
