CREATE TABLE organization.eqms_user_pin_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_user_pin_id integer,
    eqms_tenant_key integer,
    fk_eqms_user_id integer,
    pin_hash character varying(3500),
    pin_salt integer,
    pin_creation_date timestamp without time zone,
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer 
);

