-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  tenant_domains

CREATE INDEX idx_tenant_domains_tenant ON tenant_domains (tenant_id);
