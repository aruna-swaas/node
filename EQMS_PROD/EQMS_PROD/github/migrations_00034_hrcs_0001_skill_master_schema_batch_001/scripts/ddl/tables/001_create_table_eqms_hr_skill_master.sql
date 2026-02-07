-- Create schema
CREATE SCHEMA IF NOT EXISTS hrcs;

CREATE TABLE hrcs.eqms_hr_skill_master (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    skill_name character varying(50),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer 
);

