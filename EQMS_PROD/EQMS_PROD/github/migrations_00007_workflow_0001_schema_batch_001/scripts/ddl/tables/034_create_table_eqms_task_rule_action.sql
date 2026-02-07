CREATE TABLE workflow.eqms_task_rule_action (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    task_action_type character varying(50),
    execution_order integer,
    status smallint,
    created_date timestamp(6) without time zone,
    created_by integer,
    modified_date timestamp(6) without time zone,
    modified_by integer 
);

