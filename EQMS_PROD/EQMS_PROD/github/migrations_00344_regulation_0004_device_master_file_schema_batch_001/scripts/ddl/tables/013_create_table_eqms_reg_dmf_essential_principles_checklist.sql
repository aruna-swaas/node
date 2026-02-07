CREATE TABLE regulation.eqms_reg_dmf_essential_principles_checklist (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_device_master_file_id integer,
    essential_principles_checklist character varying,
    is_relevant smallint,
    specification_standard_subclause_reference character varying,
    is_complies smallint,
    document_reference_notes character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

