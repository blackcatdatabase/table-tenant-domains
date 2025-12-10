-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  tenant_domains

CREATE INDEX idx_tenant_domains_tenant ON tenant_domains (tenant_id);
