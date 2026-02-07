CREATE TABLE marketing.eqms_website_content_product_details_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_website_content_product_details_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_product_website_content_id integer,
    product_image character varying(255),
    product_features character varying(255),
    product_specifications character varying(255),
    contact_details character varying(255),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

