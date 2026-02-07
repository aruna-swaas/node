CREATE TABLE sales.eqms_quotation_customer_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_quotation_customer_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_quotation_id integer,
    encrypted_customer_name character varying,
    encrypted_contact_person_name character varying,
    encrypted_email_id character varying,
    encrypted_address character varying,
    status smallint,
    record_status smallint DEFAULT 1,
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    version numeric(10,1) 
);

