-- Create schema
CREATE SCHEMA IF NOT EXISTS abac;

CREATE TABLE abac.eqms_action_master_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    action_name character varying(255) NOT NULL,
    description text,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

