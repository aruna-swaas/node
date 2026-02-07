CREATE TABLE vendor.eqms_vendor_selection_group_criteria_lk_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_vendor_selection_group_criteria_lk_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    criteria character varying(500),
    vendor_group_criteria_type character varying(50),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_vendor_selection_group_lk_id integer,
    fk_eqms_requirement_lk_id integer 
);

