CREATE TABLE infrastructure.eqms_maintenance_plan_detail (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_maintenance_plan_id integer,
    fk_eqms_maintenance_service_type_lk_id integer,
    fk_eqms_frequency_lk_id integer,
    fk_eqms_status_lk_id integer,
    maintenance_description character varying(3500),
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

