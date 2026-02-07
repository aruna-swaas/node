-- Create schema
CREATE SCHEMA IF NOT EXISTS pre_production;

CREATE TABLE organization.eqms_storage_type_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    storage_type character varying(255),
    slug character varying(255),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

