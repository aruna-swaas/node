CREATE TABLE dnd.eqms_project_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_project_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_product_id integer,
    project_reason character varying(100),
    project_reason_description text,
    hld_req_flag smallint,
    feasibility_study_req_flag smallint,
    pnd_req_flag smallint,
    status smallint,
    version numeric(10,1),
    record_status smallint DEFAULT 1,
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    project_status character varying(50),
    project_substatus character varying(50) 
);

