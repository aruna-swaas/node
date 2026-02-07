CREATE TABLE organization.eqms_hr_induction_training_topic_supporting_file (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_induction_training_topic_lk_id integer,
    fk_eqms_supporting_file_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

