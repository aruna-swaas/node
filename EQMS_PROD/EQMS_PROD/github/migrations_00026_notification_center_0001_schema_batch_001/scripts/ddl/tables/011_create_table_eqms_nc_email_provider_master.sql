CREATE TABLE notification_center.eqms_nc_email_provider_master (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_provider_header_id integer,
    domain character varying(100),
    encrypted_host character varying,
    encrypted_port character varying,
    encrypted_username character varying,
    encrypted_password character varying,
    encrypted_from_email character varying,
    api_key character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

