CREATE TABLE dnd.eqms_pilot_validation_results (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pilot_validation_report_id integer,
    encrypted_name_of_patient character varying(1500),
    date_time timestamp without time zone,
    age integer,
    gender character varying(15),
    parameter character varying(50),
    value character varying(50),
    comments character varying(500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

