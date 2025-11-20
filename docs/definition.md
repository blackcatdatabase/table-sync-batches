<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – sync_batches

Batches of events replicated between peers.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| channel | VARCHAR(120) | NO | — | Logical replication channel. |  |
| producer_peer_id | BIGINT | NO | — | Producing peer (FK peer_nodes.id). |  |
| consumer_peer_id | BIGINT | NO | — | Consuming peer (FK peer_nodes.id). |  |
| status | TEXT | NO | 'pending' | Batch status. | enum: pending, sending, completed, failed, cancelled |
| items_total | INTEGER | NO | 0 | Total number of events in the batch. |  |
| items_ok | INTEGER | NO | 0 | Number of events applied successfully. |  |
| items_failed | INTEGER | NO | 0 | Number of events that failed. |  |
| error | TEXT | YES | — | Batch-level error, if any. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| started_at | TIMESTAMPTZ(6) | YES | — | Processing start timestamp. |  |
| finished_at | TIMESTAMPTZ(6) | YES | — | Processing completion timestamp. |  |