CREATE TABLE infrastructure.eqms_infrastructure (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_purchase_order_id integer,
    fk_eqms_infrastructure_category_lk_id integer,
    fk_eqms_infrastructure_type_lk_id integer,
    fk_eqms_power_supply_lk_id integer,
    fk_eqms_selection_installation_procedure_lk_id integer,
    fk_eqms_selection_process_equipment_lk_id integer,
    fk_eqms_frequency_lk_id integer,
    fk_eqms_status_lk_id integer,
    serial_number character varying(255),
    product_description character varying(3500),
    maintenance_start_date timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    infrastructure_name character varying(255),
    fk_eqms_purchase_order_infrastructure_detail_id integer,
    fk_eqms_organization_department_id integer 
);

