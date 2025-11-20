<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – tenant_domains

Tenant-owned domains used for routing/custom branding.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| tenant_id | BIGINT | NO | — | Owning tenant (FK tenants.id). |  |
| domain | VARCHAR(255) | NO | — | Original domain string. |  |
| domain_ci | TEXT | — | — | Lowercase domain used for uniqueness. |  |
| is_primary | BOOLEAN | NO | FALSE | Whether this domain is the tenant primary. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |