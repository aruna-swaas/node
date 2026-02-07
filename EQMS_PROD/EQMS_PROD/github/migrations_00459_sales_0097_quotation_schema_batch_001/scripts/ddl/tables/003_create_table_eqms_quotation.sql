CREATE TABLE sales.eqms_quotation (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_status_id integer,
    quotation_number character varying(255),
    fk_eqms_customer_master_id integer,
    features_and_application character varying,
    product_supply_consists_of character varying,
    quotation_date timestamp without time zone,
    terms_and_conditions smallint,
    version numeric(10,1) DEFAULT 1.0,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

