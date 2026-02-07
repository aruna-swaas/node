CREATE TABLE qc.eqms_sanity_spec_checklist_detail (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    specification character varying(3500),
    display_order integer,
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_sanity_spec_checklist_applicable_group_id integer 
);

