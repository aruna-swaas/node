CREATE TABLE hrcs.eqms_hr_health_checkup (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_organization_employee_id integer,
    last_sumbitted_date timestamp without time zone,
    next_preventive_visit timestamp without time zone,
    encrypted_eye_test_description character varying,
    encrypted_communicable_disease_description character varying,
    encrypted_vaccinations_description character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer 
);

