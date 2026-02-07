CREATE TABLE notification_center.eqms_nc_email_provider_master_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_nc_email_provider_master_id integer,
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
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

