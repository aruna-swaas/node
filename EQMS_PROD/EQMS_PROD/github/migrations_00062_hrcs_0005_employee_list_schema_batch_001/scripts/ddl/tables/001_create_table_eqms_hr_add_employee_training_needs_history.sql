CREATE TABLE hrcs.eqms_hr_add_employee_training_needs_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_hr_add_employee_training_needs_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_skill_master_id integer,
    fk_eqms_hr_employee_source_lk_id integer,
    fk_eqms_organization_employee_id integer,
    target_date timestamp without time zone,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

