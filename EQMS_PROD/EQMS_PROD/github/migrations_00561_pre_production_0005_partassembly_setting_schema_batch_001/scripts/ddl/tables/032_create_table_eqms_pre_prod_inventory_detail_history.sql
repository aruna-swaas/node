CREATE TABLE pre_production.eqms_pre_prod_inventory_detail_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pre_prod_inventory_detail_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    floor character varying,
    room character varying,
    shelf_details character varying,
    bin_number character varying,
    fk_eqms_unit_lk_id integer,
    address character varying,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_pre_prod_bom_applicable_settings_id integer 
);

