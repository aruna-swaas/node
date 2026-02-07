CREATE TABLE dnd.eqms_project_plan_design_review (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_roles_lk_id integer,
    responsibility character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_project_build_stage_order_id integer,
    fk_eqms_user_id integer 
);

