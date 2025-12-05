-- Auto-generated from schema-views-mysql.yaml (map@sha1:A4E10261DACB7519F6FEA44ED77A92163429CA5E)
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
