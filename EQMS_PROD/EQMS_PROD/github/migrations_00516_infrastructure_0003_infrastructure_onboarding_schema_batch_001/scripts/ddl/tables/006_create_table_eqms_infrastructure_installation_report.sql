CREATE TABLE infrastructure.eqms_infrastructure_installation_report (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_id integer,
    fk_eqms_maintenance_service_type_lk_id integer,
    installation_date timestamp without time zone,
    installation_location character varying(255),
    receipt_date timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

