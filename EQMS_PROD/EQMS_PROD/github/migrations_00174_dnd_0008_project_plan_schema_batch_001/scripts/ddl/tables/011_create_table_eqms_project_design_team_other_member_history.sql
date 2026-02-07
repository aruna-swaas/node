CREATE TABLE dnd.eqms_project_design_team_other_member_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_project_design_team_other_member_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    fk_eqms_project_design_team_member_selection_id integer,
    resource_name character varying(100),
    member_start_date date,
    member_end_date date,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

