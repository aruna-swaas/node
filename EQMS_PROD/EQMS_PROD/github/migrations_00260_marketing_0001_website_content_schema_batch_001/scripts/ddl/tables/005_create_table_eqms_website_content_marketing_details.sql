CREATE TABLE marketing.eqms_website_content_marketing_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_product_website_content_id integer,
    design_layout character varying(255),
    navigation_functionality character varying(255),
    product_images character varying(255),
    product_features character varying(255),
    contact_details character varying(255),
    company_profile character varying(255),
    marketing_elements character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

