CREATE TABLE risk_management.eqms_risk_management_plan (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    plan_title character varying(100),
    device_description character varying(1500),
    device_intended_use character varying(1500),
    operating_principle character varying(1500),
    version numeric(10,1) DEFAULT 1.0,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

