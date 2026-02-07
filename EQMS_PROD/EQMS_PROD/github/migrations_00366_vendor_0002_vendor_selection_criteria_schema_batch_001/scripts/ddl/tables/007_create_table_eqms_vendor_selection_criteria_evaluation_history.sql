CREATE TABLE vendor.eqms_vendor_selection_criteria_evaluation_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_vendor_selection_criteria_evaluation_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_evaluation_id integer,
    fk_eqms_vendor_group_criteria_mapper_id integer,
    selection_status smallint,
    remarks character varying(2500),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

