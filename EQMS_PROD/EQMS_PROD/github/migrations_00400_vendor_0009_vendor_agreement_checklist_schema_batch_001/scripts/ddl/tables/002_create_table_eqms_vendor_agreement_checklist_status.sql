CREATE TABLE vendor.eqms_vendor_agreement_checklist_status (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_agreement_checklist_id integer,
    fk_eqms_vendor_agreement_checklist_lk_id integer,
    checklist_status smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

