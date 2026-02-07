CREATE TABLE pre_production.eqms_pre_prod_set_burn_in_work_inst_step_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pre_prod_set_burn_in_work_inst_step_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_set_burn_in_test_prot_id integer,
    step_number character varying(50),
    acceptance_criteria character varying(3500),
    jig_equipment_setting_usage character varying(3500),
    safety_and_precaution character varying(3500),
    work_instruction_step_visuals text,
    description text,
    fk_eqms_status_lk_id integer,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

