CREATE TABLE pre_production.eqms_pre_prod_assembly_work_instruction_step (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_assembly_work_instruction_id integer,
    step_number character varying,
    safety_and_precautions character varying,
    assembly_step_visuals text,
    assembly_instructions text,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

