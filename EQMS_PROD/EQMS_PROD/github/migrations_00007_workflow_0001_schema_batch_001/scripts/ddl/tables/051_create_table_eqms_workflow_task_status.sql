CREATE TABLE workflow.eqms_workflow_task_status (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_workflow_template_id integer,
    task_status character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    status_order integer,
    ref_id integer,
    slug character varying(255) 
);

