CREATE TABLE organization.eqms_user_contact (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_user_id integer,
    contact_type character varying(50),
    encrypted_contact character varying(500),
    hash_contact_token character varying(500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer 
);

