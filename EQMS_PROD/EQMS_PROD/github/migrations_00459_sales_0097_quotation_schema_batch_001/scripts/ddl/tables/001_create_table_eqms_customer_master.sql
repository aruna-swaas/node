CREATE TABLE sales.eqms_customer_master (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    customer_code character varying(100),
    encrypted_customer_name character varying(255),
    customer_type character varying(50),
    encrypted_contact_person_name character varying(255),
    encrypted_email_id character varying(255),
    encrypted_phone_number character varying(20),
    encrypted_address character varying(1000),
    encrypted_city character varying(100),
    encrypted_state character varying(100),
    encrypted_country character varying(100),
    encrypted_postal_code character varying(20),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

