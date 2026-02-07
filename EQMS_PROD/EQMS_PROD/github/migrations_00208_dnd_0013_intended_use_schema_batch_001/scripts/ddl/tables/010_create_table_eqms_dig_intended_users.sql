CREATE TABLE dnd.eqms_dig_intended_users (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_design_input_gathering_id integer,
    intended_users character varying(3500),
    fk_eqms_status_lk_id smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_dig_specification_id integer 
);

