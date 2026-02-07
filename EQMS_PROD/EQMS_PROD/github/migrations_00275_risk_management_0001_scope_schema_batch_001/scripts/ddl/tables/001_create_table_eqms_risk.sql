-- Create schema
CREATE SCHEMA IF NOT EXISTS risk_management;

CREATE TABLE risk_management.eqms_risk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hazard_id integer,
    fk_eqms_risk_identification_method_lk_id integer,
    fk_eqms_project_risk_probability_level_id integer,
    fk_eqms_project_risk_severity_level_id integer,
    risk_code character varying(50),
    risk_description character varying(3500),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    risk_title character varying(200) 
);

