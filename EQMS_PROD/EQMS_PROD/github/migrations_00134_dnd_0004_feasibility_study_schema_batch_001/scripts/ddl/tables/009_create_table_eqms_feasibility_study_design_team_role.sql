CREATE TABLE dnd.eqms_feasibility_study_design_team_role (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_feasibility_study_report_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    design_team_role character varying(100) 
);

