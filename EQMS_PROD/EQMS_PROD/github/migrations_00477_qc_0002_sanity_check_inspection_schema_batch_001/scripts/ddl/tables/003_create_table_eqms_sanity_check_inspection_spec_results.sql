CREATE TABLE qc.eqms_sanity_check_inspection_spec_results (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_sanity_check_inspection_id integer,
    fk_eqms_sanity_spec_checklist_detail_id integer,
    observation character varying(3500),
    fk_eqms_verification_result_lk_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

