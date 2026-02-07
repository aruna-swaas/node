CREATE TABLE risk_management.eqms_risk_assessment_matrix_template (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_probability_level_template_id integer,
    fk_eqms_risk_severity_level_template_id integer,
    ref_id integer,
    is_acceptable smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

