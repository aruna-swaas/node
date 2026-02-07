CREATE TABLE hrcs.eqms_hr_health_checkup_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_hr_health_checkup_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_organization_employee_id integer,
    last_sumbitted_date timestamp without time zone,
    next_preventive_visit timestamp without time zone,
    encrypted_eye_test_description character varying,
    encrypted_communicable_disease_description character varying,
    encrypted_vaccinations_description character varying,
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

