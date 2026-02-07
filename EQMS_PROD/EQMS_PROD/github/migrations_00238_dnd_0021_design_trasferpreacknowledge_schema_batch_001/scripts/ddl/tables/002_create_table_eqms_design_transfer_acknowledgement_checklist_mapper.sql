CREATE TABLE dnd.eqms_design_transfer_acknowledgement_checklist_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_design_transfer_acknowledgement_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    is_verified smallint,
    fk_eqms_project_design_transfer_plan_id integer 
);

