CREATE TABLE pre_production.eqms_pre_prod_incoming_inspection_specification_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pre_prod_incoming_inspection_specification_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_part_category_type_lk_id integer,
    fk_eqms_part_subcategory_type_lk_id integer,
    fk_eqms_part_category_subclass_lk_id integer,
    fk_eqms_part_category_id integer,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_status_lk_id integer,
    fk_eqms_pre_prod_bom_applicable_settings_id integer,
    fk_eqms_equipment_lk_id integer 
);

