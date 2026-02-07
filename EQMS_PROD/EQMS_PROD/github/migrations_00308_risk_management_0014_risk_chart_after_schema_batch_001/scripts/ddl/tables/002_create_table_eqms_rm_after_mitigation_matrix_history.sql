CREATE TABLE risk_management.eqms_rm_after_mitigation_matrix_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_rm_after_mitigation_matrix_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_id integer,
    fk_eqms_project_risk_probability_level_id integer,
    fk_eqms_project_risk_severity_level_id integer,
    is_acceptable smallint,
    count integer,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

