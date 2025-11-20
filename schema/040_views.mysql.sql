-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  tenant_domains
-- Contract view for [tenant_domains]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_tenant_domains AS
SELECT
  id,
  tenant_id,
  domain,
  is_primary,
  created_at
FROM tenant_domains;
