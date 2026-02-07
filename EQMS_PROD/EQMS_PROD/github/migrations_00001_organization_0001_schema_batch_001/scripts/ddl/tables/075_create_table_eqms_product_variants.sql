CREATE TABLE organization.eqms_product_variants (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_organization_product_id integer,
    model_name character varying(100),
    model_number character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    description character varying(1500),
    fk_eqms_selection_lk_id integer 
);

