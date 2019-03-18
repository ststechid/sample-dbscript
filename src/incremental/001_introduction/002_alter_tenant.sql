ALTER TABLE t_tenant
ADD COLUMN pic character varying (100) DEFAULT '';

ALTER TABLE t_tenant
ALTER COLUMN description TYPE text;
