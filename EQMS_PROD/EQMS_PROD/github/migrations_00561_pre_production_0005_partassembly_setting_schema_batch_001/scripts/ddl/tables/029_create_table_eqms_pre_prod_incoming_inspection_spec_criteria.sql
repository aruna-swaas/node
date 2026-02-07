CREATE TABLE pre_production.eqms_pre_prod_incoming_inspection_spec_criteria (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_incoming_inspection_applicable_group_id integer,
    fk_eqms_pre_prod_incoming_inspection_spec_criteria_lk_id integer,
    display_order integer,
    fk_eqms_status_lk_id integer,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

