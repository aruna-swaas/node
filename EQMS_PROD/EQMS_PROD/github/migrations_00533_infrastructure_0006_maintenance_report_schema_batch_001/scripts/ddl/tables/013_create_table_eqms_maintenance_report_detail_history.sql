CREATE TABLE infrastructure.eqms_maintenance_report_detail_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_maintenance_report_detail_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_maintenance_report_id integer,
    fk_eqms_infrastructure_maintenance_plan_detail_id integer,
    fk_eqms_maintenance_service_type_lk_id integer,
    action_carried_out character varying(3500),
    maintenance_date timestamp without time zone,
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

