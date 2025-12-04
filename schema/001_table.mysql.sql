-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  tenant_domains

CREATE TABLE IF NOT EXISTS tenant_domains (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  tenant_id BIGINT UNSIGNED NOT NULL,
  domain VARCHAR(255) NOT NULL,
  domain_ci VARCHAR(255) GENERATED ALWAYS AS (LOWER(domain)) STORED,
  is_primary BOOLEAN NOT NULL DEFAULT 0,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  CONSTRAINT uq_tenant_domains UNIQUE (tenant_id, domain_ci)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
