CREATE TABLE hrcs.eqms_hr_training_attendee (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer NOT NULL,
    fk_eqms_organization_id integer NOT NULL,
    fk_eqms_hr_training_schedule_id integer NOT NULL,
    fk_eqms_organization_employee_id integer NOT NULL,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

