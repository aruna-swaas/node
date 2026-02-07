-- Create schema
CREATE SCHEMA IF NOT EXISTS hrcs;

CREATE TABLE organization.eqms_hr_skill_level_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    skill_level smallint,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

