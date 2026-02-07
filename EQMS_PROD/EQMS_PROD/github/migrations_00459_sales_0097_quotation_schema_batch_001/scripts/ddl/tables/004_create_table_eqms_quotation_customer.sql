CREATE TABLE sales.eqms_quotation_customer (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_quotation_id integer,
    encrypted_customer_name character varying,
    encrypted_contact_person_name character varying,
    encrypted_email_id character varying,
    encrypted_address character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

