CREATE TABLE risk_management.eqms_rm_benefit_risk_anlysis (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_rmp_residual_risk_acceptability_criteria_id integer,
    actual_count integer,
    result smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

