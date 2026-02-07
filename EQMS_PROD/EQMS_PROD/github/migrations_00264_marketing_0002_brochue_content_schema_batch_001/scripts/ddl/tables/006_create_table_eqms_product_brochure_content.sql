CREATE TABLE marketing.eqms_product_brochure_content (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_organization_product_id integer,
    product_marketing_material_number character varying(255),
    version numeric(10,1) DEFAULT 1.0,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

