CREATE TABLE vendor.eqms_vendor_re_evaluation_group_remarks (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_re_evaluation_id integer,
    fk_eqms_vendor_re_evaluation_applicable_group_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

