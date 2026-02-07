CREATE TABLE risk_management.eqms_rm_before_mitigation_matrix (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_id integer,
    fk_eqms_project_risk_probability_level_id integer,
    fk_eqms_project_risk_severity_level_id integer,
    is_acceptable smallint,
    count integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

