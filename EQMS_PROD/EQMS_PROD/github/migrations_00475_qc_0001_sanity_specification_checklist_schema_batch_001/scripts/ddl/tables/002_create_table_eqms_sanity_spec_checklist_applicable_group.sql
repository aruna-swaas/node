CREATE TABLE qc.eqms_sanity_spec_checklist_applicable_group (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_sanity_spec_checklist_id integer,
    fk_eqms_sanity_spec_checklist_group_lk_id integer,
    display_order integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

