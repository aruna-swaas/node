CREATE TABLE dnd.eqms_project_applicable_specification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_design_specification_type_lk_id integer,
    applicable_status smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    additional_information character varying(100),
    eqms_tenant_key integer,
    fk_eqms_project_id integer,
    fk_eqms_organization_id integer 
);

