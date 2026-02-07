CREATE TABLE hrcs.eqms_hr_employee_training_needs_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hr_employee_training_needs_id integer,
    fk_eqms_organization_employee_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_date timestamp without time zone,
    modified_by integer 
);

