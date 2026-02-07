CREATE TABLE organization.eqms_design_transfer_checklist_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    document_title character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer,
    fk_eqms_file_id integer,
    fk_eqms_record_generation_type_lk_id integer 
);

