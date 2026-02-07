CREATE TABLE dnd.eqms_design_transfer_acknowledgement_checklist_mapper_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_design_transfer_acknowledgement_checklist_mapper_id integer,
    fk_eqms_organization_id integer,
    fk_eqms_design_transfer_acknowledgement_id integer,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    is_verified smallint,
    fk_eqms_project_design_transfer_plan_id integer 
);

