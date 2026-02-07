CREATE TABLE dnd.eqms_project_design_team_stages_mapper (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_project_build_stage_order_id integer,
    responsibility_description character varying(3500),
    fk_eqms_organization_id integer,
    form_status character varying(50),
    responsibility character varying(100),
    fk_eqms_project_design_team_member_selection_id integer 
);

