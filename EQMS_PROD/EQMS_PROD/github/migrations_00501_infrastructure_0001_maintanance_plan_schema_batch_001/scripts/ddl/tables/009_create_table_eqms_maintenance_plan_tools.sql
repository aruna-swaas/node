CREATE TABLE infrastructure.eqms_maintenance_plan_tools (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_maintenance_plan_id integer,
    fk_eqms_tools_id integer,
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

