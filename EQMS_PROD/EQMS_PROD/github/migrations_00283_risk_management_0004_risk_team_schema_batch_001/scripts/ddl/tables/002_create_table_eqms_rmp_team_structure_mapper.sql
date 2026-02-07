CREATE TABLE risk_management.eqms_rmp_team_structure_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_management_plan_id integer,
    fk_eqms_rmp_applicable_stage_id integer,
    fk_eqms_rmp_responsibility_lk_id integer,
    fk_eqms_status_lk_id integer,
    fk_eqms_organization_employee_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

