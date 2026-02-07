-- Create schema
CREATE SCHEMA IF NOT EXISTS vendor;

CREATE TABLE vendor.eqms_part_category (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_part_category_subclass_lk_id integer,
    fk_eqms_status_lk_id integer,
    part_category_name character varying(500),
    description character varying(3500),
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

