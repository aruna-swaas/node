CREATE TABLE dnd.eqms_project_plan (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    design_type character varying(100),
    basic_model character varying(100),
    design_objective character varying(3500),
    risk_management_activities character varying(3500),
    other_details character varying(3500),
    ip_op_traceability character varying(3500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

