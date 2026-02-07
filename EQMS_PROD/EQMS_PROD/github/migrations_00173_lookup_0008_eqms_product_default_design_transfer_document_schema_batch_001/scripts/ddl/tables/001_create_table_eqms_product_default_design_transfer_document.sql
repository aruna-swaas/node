CREATE TABLE organization.eqms_product_default_design_transfer_document (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_product_type_lk_id integer,
    fk_eqms_product_group_lk_id integer,
    fk_eqms_product_subtype_lk_id integer,
    fk_eqms_design_transfer_checklist_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

