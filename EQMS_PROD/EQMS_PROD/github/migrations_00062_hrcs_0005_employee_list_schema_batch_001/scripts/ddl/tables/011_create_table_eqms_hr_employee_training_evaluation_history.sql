CREATE TABLE hrcs.eqms_hr_employee_training_evaluation_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_hr_employee_training_evaluation_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_skill_master_id integer,
    fk_eqms_hr_required_skill_level_id integer,
    method_of_evaluation character varying(100),
    remarks character varying(100),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_hr_acquired_skill_level_id integer,
    fk_eqms_hr_training_attendee_id integer,
    fk_eqms_hr_training_evaluation_id integer 
);

