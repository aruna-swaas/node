CREATE TABLE organization.eqms_organization_product (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_product_type_lk_id integer,
    fk_eqms_product_subtype_lk_id integer,
    fk_eqms_product_group_lk_id integer,
    fk_eqms_product_category_lk_id integer,
    product_intended_use character varying(500),
    product_name character varying(100),
    product_generic_name character varying(100),
    product_description text,
    status smallint,
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    product_code character varying(255) 
);

