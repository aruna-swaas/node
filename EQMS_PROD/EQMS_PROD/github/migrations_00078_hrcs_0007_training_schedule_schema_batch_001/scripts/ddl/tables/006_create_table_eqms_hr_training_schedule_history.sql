CREATE TABLE hrcs.eqms_hr_training_schedule_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer NOT NULL,
    fk_eqms_organization_id integer NOT NULL,
    fk_eqms_hr_training_schedule_id integer NOT NULL,
    fk_eqms_organization_employee_id integer NOT NULL,
    title character varying(200),
    date_of_training timestamp without time zone,
    mode_of_training character varying(50),
    trainer_competency character varying(1500),
    training_materials character varying(1500),
    location character varying(200),
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

