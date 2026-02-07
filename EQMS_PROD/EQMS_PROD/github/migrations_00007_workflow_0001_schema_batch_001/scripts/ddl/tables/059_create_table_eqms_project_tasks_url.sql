CREATE TABLE workflow.eqms_project_tasks_url (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_tasks_id integer,
    template_url character varying(3500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    task_url character varying(3500) 
);

