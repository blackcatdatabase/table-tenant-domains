-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  tenant_domains

CREATE INDEX idx_tenant_domains_tenant ON tenant_domains (tenant_id);
