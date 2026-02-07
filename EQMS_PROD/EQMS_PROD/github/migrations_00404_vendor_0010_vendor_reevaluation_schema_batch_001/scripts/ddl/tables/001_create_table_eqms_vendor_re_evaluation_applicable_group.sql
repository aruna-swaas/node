CREATE TABLE vendor.eqms_vendor_re_evaluation_applicable_group (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_re_evaluation_criteria_id integer,
    fk_eqms_vendor_re_evaluation_group_lk_id integer,
    display_order integer,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

