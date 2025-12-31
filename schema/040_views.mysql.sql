-- Auto-generated from schema-views-mysql.yaml (map@sha1:9417D8642843C7C690617409574FC6783895880D)
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
