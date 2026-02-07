CREATE TABLE dms.eqms_record_verification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_verification_user_id integer,
    fk_eqms_verification_esign_image_id integer,
    verification_type character varying(100),
    verification_comment text,
    verification_date timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_record_history_id integer 
);

