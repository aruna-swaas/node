CREATE TABLE dnd.eqms_project (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_organization_product_id integer,
    project_reason character varying(100),
    project_reason_description text,
    hld_req_flag smallint,
    feasibility_study_req_flag smallint,
    pnd_req_flag smallint,
    status smallint,
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    project_status character varying(50),
    project_substatus character varying(50) 
);

