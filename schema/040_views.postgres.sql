-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
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
