CREATE TABLE pre_production.eqms_pre_prod_final_oqc_insp_prot_work_inst_step (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_final_oqc_insp_prot_model_mapper_id integer,
    step_number character varying(50),
    acceptance_criteria character varying(3500),
    jig_equipment_setting_usage character varying(3500),
    safety_and_precaution character varying(3500),
    work_instruction_step_visuals text,
    description text,
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

