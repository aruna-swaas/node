CREATE TABLE pre_production.eqms_pre_prod_incoming_inspection_specification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_part_category_type_lk_id integer,
    fk_eqms_part_subcategory_type_lk_id integer,
    fk_eqms_part_category_subclass_lk_id integer,
    fk_eqms_part_category_id integer,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_status_lk_id integer,
    fk_eqms_pre_prod_bom_applicable_settings_id integer,
    fk_eqms_equipment_lk_id integer 
);

