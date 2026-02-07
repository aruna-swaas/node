CREATE TABLE dnd.eqms_execution_stage_verification_plan (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    units_to_be_verified integer,
    verification_plan character varying(100),
    acceptance_criteria character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_execution_stage_id integer,
    fk_eqms_jig_lk_id integer,
    fk_eqms_equipment_lk_id integer,
    fk_eqms_tools_id integer 
);

