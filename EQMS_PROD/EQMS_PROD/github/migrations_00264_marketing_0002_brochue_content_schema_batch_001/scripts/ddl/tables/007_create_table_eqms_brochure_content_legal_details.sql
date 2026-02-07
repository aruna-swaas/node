CREATE TABLE marketing.eqms_brochure_content_legal_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_product_brochure_content_id integer,
    legal_content character varying(255),
    disclaimers character varying(255),
    contact_details character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

