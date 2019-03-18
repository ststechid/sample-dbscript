CREATE SEQUENCE tenant_seq
  INCREMENT 1
  MINVALUE 10
  MAXVALUE 9223372036854775807
  START 10
  CACHE 1;

CREATE TABLE t_tenant
(
  tenant_id bigint NOT NULL DEFAULT nextval('tenant_seq'),
  tenant_code character varying(50),
  description character varying(1024),
  tenant_key character varying(32),
  tenant_name character varying(255),
  email character varying(100),
  host character varying(100),
  create_datetime character varying(14),
  create_user_id bigint,
  update_datetime character varying(14),
  update_user_id bigint,
  "version" bigint NOT NULL,
  active character varying(1),
  active_datetime character varying(14),
  non_active_datetime character varying(14),
  CONSTRAINT t_tenant_pkey PRIMARY KEY (tenant_id)
)
WITH (
  OIDS=FALSE
);

CREATE UNIQUE INDEX idx_tenant_01
  ON t_tenant
  USING btree
  (tenant_code);

CREATE UNIQUE INDEX idx_tenant_02
  ON t_tenant
  USING btree
  (email);
