CREATE TABLE workflow.eqms_task_generator_query_conditions (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_task_generator_query_id integer,
    ref_id integer,
    fk_eqms_task_generator_query_join_id integer,
    condition_expression text,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

