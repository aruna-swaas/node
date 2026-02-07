CREATE TABLE infrastructure.eqms_maintenance_report_equipment (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_maintenance_report_id integer,
    fk_eqms_equipment_item_id integer,
    status integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

