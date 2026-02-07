CREATE TABLE hrcs.eqms_hr_employee_training_evaluation (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_skill_master_id integer,
    fk_eqms_hr_required_skill_level_id integer,
    method_of_evaluation character varying(100),
    remarks character varying(100),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_hr_acquired_skill_level_id integer,
    fk_eqms_hr_training_attendee_id integer,
    fk_eqms_hr_training_evaluation_id integer 
);

