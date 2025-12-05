-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  tenant_domains

CREATE INDEX IF NOT EXISTS idx_tenant_domains_tenant ON tenant_domains (tenant_id);
