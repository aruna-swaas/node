CREATE TABLE workflow.eqms_task_generator_parameters (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_task_generator_id integer,
    parameters json,
    description text,
    status smallint,
    created_by integer,
    created_date timestamp(6) without time zone,
    modified_date timestamp(6) without time zone,
    modified_by integer,
    ref_id integer 
);

