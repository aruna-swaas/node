CREATE TABLE dnd.eqms_pilot_validation_report (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pilot_validation_place_id integer,
    product_serial_number character varying(50),
    software_verification_number character varying(50),
    correction_actions character varying(500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    conclusion character varying 
);

