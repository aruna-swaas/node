CREATE TABLE hrcs.eqms_hr_induction_training (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_induction_training_topic_supporting_file_id integer,
    conducted_on timestamp without time zone,
    is_complete smallint,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_hr_induction_training_employee_header_id integer,
    fk_eqms_organization_employee_id integer 
);

