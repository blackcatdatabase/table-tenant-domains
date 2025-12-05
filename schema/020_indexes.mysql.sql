-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  tenant_domains

CREATE INDEX idx_tenant_domains_tenant ON tenant_domains (tenant_id);
