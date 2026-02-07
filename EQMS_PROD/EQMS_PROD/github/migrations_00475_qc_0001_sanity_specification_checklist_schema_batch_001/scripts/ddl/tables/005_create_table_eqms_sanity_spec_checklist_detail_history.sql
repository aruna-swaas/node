CREATE TABLE qc.eqms_sanity_spec_checklist_detail_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_sanity_spec_checklist_detail_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    specification character varying(3500),
    display_order integer,
    fk_eqms_status_lk_id integer,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_sanity_spec_checklist_applicable_group_id integer 
);

