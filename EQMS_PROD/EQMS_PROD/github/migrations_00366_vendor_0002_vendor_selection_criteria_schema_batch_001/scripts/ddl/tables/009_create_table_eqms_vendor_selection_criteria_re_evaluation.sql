CREATE TABLE vendor.eqms_vendor_selection_criteria_re_evaluation (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_re_evaluation_id integer,
    fk_eqms_vendor_re_evaluation_group_criteria_mapper_id integer,
    remarks character varying(2500),
    selection_status smallint,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

