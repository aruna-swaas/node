CREATE TABLE dnd.eqms_project_design_team_member (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_project_id integer,
    member_start_date date,
    member_end_date date,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_design_team_member_selection_id integer,
    fk_eqms_organization_employee_id integer 
);

