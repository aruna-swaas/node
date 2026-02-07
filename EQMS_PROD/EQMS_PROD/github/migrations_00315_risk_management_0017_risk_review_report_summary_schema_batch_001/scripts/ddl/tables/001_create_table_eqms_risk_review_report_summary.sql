CREATE TABLE risk_management.eqms_risk_review_report_summary (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    risk_management_plan_summary character varying(3500),
    medical_benefit character varying(3500),
    fk_eqms_value_acceptability_lk_id integer,
    fk_eqms_selection_lk_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

