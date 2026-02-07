CREATE TABLE workflow.eqms_project_type (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    project_type character varying(50),
    version numeric(10,1) DEFAULT 1.0,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_workflow_template_id integer,
    slug character varying(50),
    ref_id integer 
);

