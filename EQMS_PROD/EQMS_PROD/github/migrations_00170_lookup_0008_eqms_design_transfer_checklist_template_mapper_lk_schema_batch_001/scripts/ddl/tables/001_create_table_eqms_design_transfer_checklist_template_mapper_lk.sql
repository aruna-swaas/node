CREATE TABLE organization.eqms_design_transfer_checklist_template_mapper_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_design_transfer_checklist_lk_id integer,
    fk_eqms_document_template_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

