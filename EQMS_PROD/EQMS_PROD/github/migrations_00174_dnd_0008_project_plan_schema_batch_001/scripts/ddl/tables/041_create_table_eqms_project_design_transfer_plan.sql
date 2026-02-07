CREATE TABLE dnd.eqms_project_design_transfer_plan (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_design_transfer_checklist_lk_id integer,
    fk_eqms_project_plan_id integer,
    document_share_date date,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    pre_transfer smallint,
    final_design_transfer smallint 
);

