CREATE TABLE vendor.eqms_vendor_selection_criteria_evaluation (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_evaluation_id integer,
    fk_eqms_vendor_group_criteria_mapper_id integer,
    selection_status smallint,
    remarks character varying(2500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

