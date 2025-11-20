# 📦 Sync Batches

![SQL](https://img.shields.io/badge/SQL-MySQL%208.0%2B-4479A1?logo=mysql&logoColor=white) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-informational) ![Generated](https://img.shields.io/badge/generated-from%20schema--map-blue)

<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->

> Schema package for table **sync_batches** (repo: `sync-batches`).

## Files
```
schema/
  001_table.sql
  020_indexes.sql
  030_foreign_keys.sql
```

## Quick apply
```bash
# Apply schema (Linux/macOS):
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/001_table.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/020_indexes.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/030_foreign_keys.sql
```

```powershell
# Apply schema (Windows PowerShell):
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/001_table.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/020_indexes.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/030_foreign_keys.sql
```

## Docker quickstart
```bash
# Spin up a throwaway MySQL and apply just this package:
docker run --rm -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=app -p 3307:3306 -d mysql:8
sleep 15
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/001_table.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/020_indexes.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/030_foreign_keys.sql
```

## Columns
| Column | Type | Null | Default | Extra |
|-------:|:-----|:----:|:--------|:------|
| id | BIGINT | — | AS | PK |
| channel | VARCHAR(120) | NO | — |  |
| producer_peer_id | BIGINT | NO | — |  |
| consumer_peer_id | BIGINT | NO | — |  |
| status | TEXT | NO | 'pending' |  |
| items_total | INTEGER | NO | 0 |  |
| items_ok | INTEGER | NO | 0 |  |
| items_failed | INTEGER | NO | 0 |  |
| error | TEXT | YES | — |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) |  |
| started_at | TIMESTAMPTZ(6) | YES | — |  |
| finished_at | TIMESTAMPTZ(6) | YES | — |  |

## Relationships
- FK → **peer_nodes** via (consumer_peer_id) (ON DELETE RESTRICT).
- FK → **peer_nodes** via (producer_peer_id) (ON DELETE RESTRICT).

```mermaid
erDiagram
  SYNC_BATCHES {
    INT id PK
    VARCHAR channel
    INT producer_peer_id
    INT consumer_peer_id
    VARCHAR status
    INTEGER items_total
    INTEGER items_ok
    INTEGER items_failed
    VARCHAR error
    TIMESTAMPTZ created_at
    TIMESTAMPTZ started_at
    TIMESTAMPTZ finished_at
  }
  SYNC_BATCHES }o--|| PEER_NODES : "consumer_peer_id"
  SYNC_BATCHES }o--|| PEER_NODES : "producer_peer_id"
```

## Indexes
- 2 deferred index statement(s) in schema/020_indexes.sql.

## Notes
- Generated from the umbrella repository **blackcat-database** using `scripts/schema-map.psd1`.
- To change the schema, update the map and re-run the generators.

## License
Distributed under the **BlackCat Store Proprietary License v1.0**. See `LICENSE`.
