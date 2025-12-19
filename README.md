# 📦 Sync Batches

> Auto-generated from [schema-map-postgres.yaml](https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml) (map@sha1:260cf51de6e2c742030665b35b370cdae36de2c6). Do not edit manually.
> Targets: PHP 8.3; MySQL 8.x / MariaDB 10.4; Postgres 15+.

![PHP](https://img.shields.io/badge/PHP-8.3-blueviolet) ![DB](https://img.shields.io/badge/DB-MySQL%20%7C%20MariaDB%20%7C%20Postgres-informational) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-success)

![Docs](https://img.shields.io/badge/Docs-ready-success) ![Changelog](https://img.shields.io/badge/Changelog-ok-success) ![Changelog%20freshness](https://img.shields.io/badge/Changelog%20freshness-fresh-success) ![Seeds](https://img.shields.io/badge/Seeds-missing-critical) ![Views](https://img.shields.io/badge/Views-ok-success) ![Lineage](https://img.shields.io/badge/Lineage-linked-success) ![Drift](https://img.shields.io/badge/Drift-clean-success) ![Index%20coverage](https://img.shields.io/badge/Index%20coverage-ready-success) ![PII](https://img.shields.io/badge/PII-review-critical)

✅ No engine drift detected

> **Schema snapshot**
> Map: [schema-map-postgres.yaml](https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml) · Docs: [docs/definitions.md](docs/definitions.md) · Drift warnings: 0
> Lineage: 1 outbound / 1 inbound · ✅ No engine drift detected · Index coverage: ready · PII flags: 1 · Changelog: fresh

## Quick Links
| What | Link | Notes |
| --- | --- | --- |
| Schema map | [schema-map-postgres.yaml](https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml) | Source for table metadata |
| Pkg folder | [packages/sync-batches](https://github.com/blackcatacademy/blackcat-database/blob/main/packages/sync-batches) | Repo location |
| Definitions | [docs/definitions.md](docs/definitions.md) | Column/index/FK docs |
| Engine differences | [docs/definitions.md#engine-differences](docs/definitions.md#engine-differences) | Drift section in definitions |
| Changelog | [CHANGELOG.md](CHANGELOG.md) | Recent changes |

## Contents
| Section | Purpose |
| --- | --- |
| [Quick Links](#quick-links) | Jump to definitions/changelog/tooling |
| [At a Glance](#at-a-glance) | Key counts (columns/indexes/views) |
| [Summary](#summary) | Compact status matrix for this package |
| [Relationship Graph](#relationship-graph) | FK lineage snapshot |
| [Engine Matrix](#engine-matrix) | MySQL/Postgres coverage |
| [Engine Drift](#engine-drift) | Cross-engine diffs |
| [Constraints Snapshot](#constraints-snapshot) | Defaults/enums/checks |
| [Compliance Notes](#compliance-notes) | PII/secret hints |
| [Schema Files](#schema-files) | Scripts by engine |
| [Views](#views) | View definitions |
| [Seeds](#seeds) | Fixtures/smoke data |
| [Usage](#usage) | Runnable commands |
| [Quality Gates](#quality-gates) | Readiness checklist |
| [Regeneration](#regeneration) | Rebuild docs/readme |

## At a Glance
| Metric | Count |
| --- | --- |
| Columns | **14** |
| Indexes | **4** |
| Foreign keys | **4** |
| Unique keys | **0** |
| Outbound links (FK targets) | **1** |
| Inbound links (tables depending on this) | **1** |
| Views | **6** |
| Seeds | **0** |
| Drift warnings | **0** |
| PII flags | **1** |

## Summary
| Item | Value |
| --- | --- |
| Table | sync_batches |
| Schema files | **12** |
| Views | **6** |
| Seeds | **0** |
| Docs | **present** |
| Changelog | **present** |
| Changelog freshness | fresh (threshold 45 d) |
| Lineage | outbound **1** / inbound **1** |
| Index coverage | **ready** |
| Engine targets | PHP 8.3; MySQL/MariaDB/Postgres |

## Relationship Graph
> ⚡ Neon FK map below is parsed straight from docs/definitions.md for quick orientation.
```mermaid
graph LR
  %% Neon lineage view (auto-parsed from docs/definitions.md)
  classDef center fill:#0b1021,stroke:#ff6b6b,stroke-width:3px,color:#fefefe;
  classDef link fill:#0a1f33,stroke:#64dfdf,stroke-width:2px,color:#e8f7ff;
  classDef accent fill:#1d1b4c,stroke:#a855f7,stroke-width:2px,color:#f5e1ff;
  classDef inbound fill:#0f172a,stroke:#10b981,stroke-width:2px,color:#e2fcef;
  sync_batches["sync_batches"]:::center
  sync_batches -->|FK| peer_nodes["peer_nodes"]:::link
  sync_batch_items["sync_batch_items"]:::inbound -->|FK| sync_batches
  linkStyle 0 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 1 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
```

- Outbound (depends on): "peer_nodes"
- Inbound (relies on this): "sync_batch_items"
- Legend: central node = this table, teal/purple arrows = outbound FK targets, green arrows = inbound FK sources.

## Engine Matrix
| Engine | Support |
| --- | --- |
| mysql | ✅ schema(5)<br/>✅ views(3)<br/>⚠️ seeds |
| postgres | ✅ schema(6)<br/>✅ views(3)<br/>⚠️ seeds |

## Engine Drift
_No engine differences detected._

## Constraints Snapshot
- `status` – default=pending, enum
- `items_total` – default=0
- `items_ok` – default=0
- `items_failed` – default=0
- `created_at` – default=CURRENT_TIMESTAMP(6)

## Schema Files
| File | Engine |
| --- | --- |
| [001_table.mysql.sql](schema/001_table.mysql.sql) | mysql |
| [001_table.postgres.sql](schema/001_table.postgres.sql) | postgres |
| [020_indexes.postgres.sql](schema/020_indexes.postgres.sql) | postgres |
| [030_foreign_keys.mysql.sql](schema/030_foreign_keys.mysql.sql) | mysql |
| [030_foreign_keys.postgres.sql](schema/030_foreign_keys.postgres.sql) | postgres |
| [040_views_joins.mysql.sql](schema/040_views_joins.mysql.sql) | mysql |
| [040_views_joins.postgres.sql](schema/040_views_joins.postgres.sql) | postgres |
| [040_views.mysql.sql](schema/040_views.mysql.sql) | mysql |
| [040_views.postgres.sql](schema/040_views.postgres.sql) | postgres |
| [encryption-map.json](schema/encryption-map.json) |  |
| [040_views_modules.mysql.sql](schema/modules/blackcat-database-sync/040_views_modules.mysql.sql) | mysql |
| [040_views_modules.postgres.sql](schema/modules/blackcat-database-sync/040_views_modules.postgres.sql) | postgres |

## Views
| File | Engine | Source |
| --- | --- | --- |
| [040_views_joins.mysql.sql](schema/040_views_joins.mysql.sql) | mysql | package |
| [040_views_joins.postgres.sql](schema/040_views_joins.postgres.sql) | postgres | package |
| [040_views.mysql.sql](schema/040_views.mysql.sql) | mysql | package |
| [040_views.postgres.sql](schema/040_views.postgres.sql) | postgres | package |
| [040_views_modules.mysql.sql](schema/modules/blackcat-database-sync/040_views_modules.mysql.sql) | mysql | package |
| [040_views_modules.postgres.sql](schema/modules/blackcat-database-sync/040_views_modules.postgres.sql) | postgres | package |

## Seeds
_No seed files found._

## Compliance Notes
> ⚠️ Potential PII/secret fields – review retention/encryption policies:
- id (key)

## Usage
```bash
# Install/upgrade schema
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Migrate-DryRun.ps1 -Package sync-batches -Apply
# Split schema to packages
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Split-SchemaToPackages.ps1
# Generate PHP DTO/Repo from schema
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Generate-PhpFromSchema.ps1 -SchemaDir scripts/schema -TemplatesRoot scripts/templates/php -ModulesRoot packages -NameResolution detect -Force
# Validate SQL across packages
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Lint-Sql.ps1 -PackagesDir packages
```

- PHPUnit (full DB matrix):
```bash
BC_DB=mysql vendor/bin/phpunit --configuration tests/phpunit.xml.dist --testsuite "DB Integration"
BC_DB=postgres vendor/bin/phpunit --configuration tests/phpunit.xml.dist --testsuite "DB Integration"
BC_DB=mariadb vendor/bin/phpunit --configuration tests/phpunit.xml.dist --testsuite "DB Integration"
```

## Quality Gates
- [x] Definitions present
- [x] Changelog present
- [x] Changelog fresh
- [x] Index coverage (PK + index)
- [x] Outbound lineage captured
- [x] Inbound lineage mapped
- [x] ERD renderable (mermaid)
- [ ] Seeds available – add smoke data seeds

## Maintenance Checklist
- [ ] Update schema map and split: Split-SchemaToPackages.ps1
- [ ] Regenerate PHP DTO/Repo: Generate-PhpFromSchema.ps1
- [ ] Rebuild definitions + README + docs index
- [ ] Ensure seeds/smoke data are present (if applicable)
- [ ] Lint SQL + run full PHPUnit DB matrix

## Regeneration
```bash
# Rebuild definitions (docs/definitions.md)
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Build-Definitions.ps1 -Force
# Regenerate package READMEs
pwsh -NoLogo -NoProfile -File scripts/docs/New-PackageReadmes.ps1 -Force
# Regenerate docs index
pwsh -NoLogo -NoProfile -File scripts/docs/New-DocsIndex.ps1 -Force
# Regenerate package changelogs
pwsh -NoLogo -NoProfile -File scripts/docs/New-PackageChangelogs.ps1 -Force
```

---
> ⚖️ License: BlackCat Proprietary – detailed terms in [LICENSE](https://github.com/blackcatacademy/blackcat-database/blob/main/LICENSE).
