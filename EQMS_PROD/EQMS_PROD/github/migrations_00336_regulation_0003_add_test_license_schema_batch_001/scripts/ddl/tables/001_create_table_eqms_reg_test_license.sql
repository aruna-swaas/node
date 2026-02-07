CREATE TABLE regulation.eqms_reg_test_license (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    fk_eqms_reg_test_checklist_section_master_id integer,
    is_mandatory smallint,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

