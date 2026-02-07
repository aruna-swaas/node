CREATE TABLE dnd.eqms_project_build_stage_order (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_organization_id integer,
    stage_number smallint,
    stage_order smallint,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    eqms_tenant_key integer,
    fk_eqms_project_build_stages_id integer 
);

