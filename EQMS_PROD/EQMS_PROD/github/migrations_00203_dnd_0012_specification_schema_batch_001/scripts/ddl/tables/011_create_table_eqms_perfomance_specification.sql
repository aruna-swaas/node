CREATE TABLE dnd.eqms_perfomance_specification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    parameter character varying(100),
    unit character varying(100),
    value character varying(100),
    description text,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

