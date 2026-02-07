CREATE TABLE dms.eqms_record_variables (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_record_id integer,
    variable_key character varying(100),
    variable_identifier character varying(100),
    variable_response_type character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

