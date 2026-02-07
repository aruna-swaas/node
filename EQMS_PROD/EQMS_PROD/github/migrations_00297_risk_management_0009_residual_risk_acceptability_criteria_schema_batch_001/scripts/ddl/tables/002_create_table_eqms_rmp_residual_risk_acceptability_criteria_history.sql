CREATE TABLE risk_management.eqms_rmp_residual_risk_acceptability_criteria_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_rmp_residual_risk_acceptability_criteria_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_rmp_residual_risk_acceptability_type_lk_id integer,
    fk_eqms_project_risk_probability_level_id integer,
    fk_eqms_project_risk_severity_level_id integer,
    fk_eqms_rm_comparison_operator_lk_id integer,
    acceptance_criteria_description character varying(3500),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    max_allowed integer 
);

