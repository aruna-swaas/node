-- Create schema
CREATE SCHEMA IF NOT EXISTS workflow;

CREATE TABLE workflow.eqms_commenter_type_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    commenter_type character varying(50),
    slug character varying(50),
    status integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

