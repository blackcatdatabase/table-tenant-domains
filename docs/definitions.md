# tenant_domains

Tenant-owned domains used for routing/custom branding.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| domain | VARCHAR(255) | NO |  | Original domain string. |
| domain_ci | mysql: VARCHAR(255) / postgres: TEXT | YES |  | Lowercase domain used for uniqueness. |
| id | BIGINT | NO |  | Surrogate primary key. |
| is_primary | BOOLEAN | NO | mysql: 0 / postgres: FALSE | Whether this domain is the tenant primary. |
| tenant_id | BIGINT | NO |  | Owning tenant (FK tenants.id). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_tenant_domains | tenant_id, domain_ci |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_tenant_domains_tenant | tenant_id | CREATE INDEX idx_tenant_domains_tenant ON tenant_domains (tenant_id) |
| uq_tenant_domains | tenant_id,domain_ci | CONSTRAINT uq_tenant_domains UNIQUE (tenant_id, domain_ci) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_tenant_domains_tenant | tenant_id | tenants(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_tenant_domains | tenant_id, domain_ci |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_tenant_domains_tenant | tenant_id | CREATE INDEX IF NOT EXISTS idx_tenant_domains_tenant ON tenant_domains (tenant_id) |
| uq_tenant_domains | tenant_id,domain_ci | CONSTRAINT uq_tenant_domains UNIQUE (tenant_id, domain_ci) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_tenant_domains_tenant | tenant_id | tenants(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_tenant_domains | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_tenant_domains | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
