-- Create schema
CREATE SCHEMA IF NOT EXISTS qc;

CREATE TABLE organization.eqms_sanity_spec_checklist_group_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    group_name character varying(100),
    spec_group_type character varying(50),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

