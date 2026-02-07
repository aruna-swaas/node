CREATE TABLE dnd.eqms_project_quality_reports (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_project_quality_plan_id integer,
    fk_eqms_organization_id integer,
    fk_eqms_design_stage_item_lk_id integer 
);

