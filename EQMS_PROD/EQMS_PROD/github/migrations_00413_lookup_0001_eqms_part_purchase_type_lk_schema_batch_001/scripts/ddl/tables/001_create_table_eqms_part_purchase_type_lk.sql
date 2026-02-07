-- Create schema
CREATE SCHEMA IF NOT EXISTS purchase;

CREATE TABLE organization.eqms_part_purchase_type_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    purchase_type character varying(20),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    slug character varying(100) 
);

