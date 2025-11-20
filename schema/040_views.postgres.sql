-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  tenant_domains
-- Contract view for [tenant_domains]
CREATE OR REPLACE VIEW vw_tenant_domains AS
SELECT
  id,
  tenant_id,
  domain,
  is_primary,
  created_at
FROM tenant_domains;
