-- Create schema
CREATE SCHEMA IF NOT EXISTS risk_management;

CREATE TABLE organization.eqms_risk_identification_method_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    method_name character varying(100),
    description character varying(3500),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

