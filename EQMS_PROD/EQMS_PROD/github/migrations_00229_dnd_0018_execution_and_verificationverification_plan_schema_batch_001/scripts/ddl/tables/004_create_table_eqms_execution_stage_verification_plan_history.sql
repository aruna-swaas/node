CREATE TABLE dnd.eqms_execution_stage_verification_plan_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_execution_stage_verification_plan_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    units_to_be_verified integer,
    verification_plan character varying(100),
    acceptance_criteria character varying(100),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_execution_stage_id integer,
    fk_eqms_jig_lk_id integer,
    fk_eqms_equipment_lk_id integer,
    fk_eqms_tools_id integer 
);

