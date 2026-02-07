CREATE TABLE vendor.eqms_vendors (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_type_lk_id integer,
    fk_eqms_vendor_re_evaluation_frequency_lk_id integer,
    encrypted_vendor_name character varying,
    encrypted_address character varying,
    encrypted_location character varying,
    encrypted_contact_person_name character varying,
    encrypted_telephone_number character varying,
    encrypted_email character varying,
    encrypted_website character varying,
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_status_lk_id integer 
);

