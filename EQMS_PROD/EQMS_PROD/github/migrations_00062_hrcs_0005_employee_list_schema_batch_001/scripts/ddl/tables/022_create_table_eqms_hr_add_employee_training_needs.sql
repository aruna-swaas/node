CREATE TABLE hrcs.eqms_hr_add_employee_training_needs (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_skill_master_id integer,
    fk_eqms_hr_employee_source_lk_id integer,
    fk_eqms_organization_employee_id integer,
    target_date timestamp without time zone,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer 
);

