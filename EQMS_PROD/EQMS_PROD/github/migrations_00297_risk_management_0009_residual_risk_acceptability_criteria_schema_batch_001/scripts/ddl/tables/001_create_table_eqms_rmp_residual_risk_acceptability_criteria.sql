CREATE TABLE risk_management.eqms_rmp_residual_risk_acceptability_criteria (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_rmp_residual_risk_acceptability_type_lk_id integer,
    fk_eqms_project_risk_probability_level_id integer,
    fk_eqms_project_risk_severity_level_id integer,
    fk_eqms_rm_comparison_operator_lk_id integer,
    acceptance_criteria_description character varying(3500),
    version numeric(10,1) DEFAULT 1.0,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    max_allowed integer 
);

