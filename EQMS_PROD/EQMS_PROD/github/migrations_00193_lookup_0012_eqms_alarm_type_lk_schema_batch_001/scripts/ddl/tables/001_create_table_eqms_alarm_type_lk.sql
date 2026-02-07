CREATE TABLE organization.eqms_alarm_type_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ref_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    alarm_type character varying(255),
    slug character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

