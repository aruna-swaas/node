CREATE TABLE risk_management.eqms_risk_menu_stage_review (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_stage_review_id integer,
    fk_eqms_risk_review_summary_lk_id integer,
    is_menu_reviewed smallint,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

