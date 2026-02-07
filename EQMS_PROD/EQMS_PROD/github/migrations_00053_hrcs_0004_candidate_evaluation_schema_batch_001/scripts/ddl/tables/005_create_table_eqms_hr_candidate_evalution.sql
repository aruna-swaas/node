CREATE TABLE hrcs.eqms_hr_candidate_evalution (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_resource_requisition_id integer,
    fk_eqms_hr_role_definition_id integer,
    fk_eqms_hr_evalution_status_lk_id integer,
    date_of_interview timestamp without time zone,
    actual_educational_qualification character varying(100),
    actual_experience integer,
    comments character varying(100),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer,
    encrypted_candidate_first_name character varying,
    encrypted_candidate_last_name character varying,
    justification character varying(500) 
);

