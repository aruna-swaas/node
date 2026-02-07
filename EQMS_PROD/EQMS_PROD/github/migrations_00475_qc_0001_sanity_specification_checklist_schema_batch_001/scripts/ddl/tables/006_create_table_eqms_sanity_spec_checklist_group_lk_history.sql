CREATE TABLE qc.eqms_sanity_spec_checklist_group_lk_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_sanity_spec_checklist_group_lk_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    group_name character varying(100),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    spec_group_type character varying(50) 
);

