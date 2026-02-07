CREATE TABLE risk_management.eqms_risk_category_applicability (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    fk_eqms_risk_category_lk_id integer,
    is_applicable smallint,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

