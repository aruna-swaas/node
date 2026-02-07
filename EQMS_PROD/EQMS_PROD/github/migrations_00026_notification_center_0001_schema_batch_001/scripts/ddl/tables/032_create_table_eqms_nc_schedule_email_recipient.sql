CREATE TABLE notification_center.eqms_nc_schedule_email_recipient (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_schedule_id integer,
    encrypted_to text,
    encrypted_cc jsonb,
    encrypted_bcc jsonb,
    schedule_status character varying(10),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

