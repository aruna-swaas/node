CREATE TABLE risk_management.eqms_rmp_committee (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_management_plan_id integer,
    fk_eqms_role_lk_id integer,
    fk_eqms_organization_employee_id integer,
    fk_eqms_status_lk_id integer,
    description character varying(1500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

