-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  tenant_domains

CREATE INDEX idx_tenant_domains_tenant ON tenant_domains (tenant_id);
