CREATE TABLE infrastructure.eqms_infrastructure_maintenance_schedule_detail (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_maintenance_plan_detail_id integer,
    scheduled_date timestamp without time zone,
    fk_eqms_schedule_status_lk_id integer,
    status integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

