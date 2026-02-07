CREATE TABLE vendor.eqms_vendor_selection_criteria (
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
    fk_eqms_status_lk_id integer 
);

