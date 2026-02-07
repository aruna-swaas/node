CREATE TABLE infrastructure.eqms_maintenance_report_detail (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_maintenance_report_id integer,
    fk_eqms_infrastructure_maintenance_plan_detail_id integer,
    fk_eqms_maintenance_service_type_lk_id integer,
    action_carried_out character varying(3500),
    maintenance_date timestamp without time zone,
    status integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

