-- Create schema
CREATE SCHEMA IF NOT EXISTS regulation;

CREATE TABLE organization.eqms_reg_product_classification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_regulation_id integer,
    classification character varying,
    description character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

