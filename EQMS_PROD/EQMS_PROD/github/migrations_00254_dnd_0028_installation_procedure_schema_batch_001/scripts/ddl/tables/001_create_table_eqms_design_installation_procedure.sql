CREATE TABLE dnd.eqms_design_installation_procedure (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    fk_eqms_last_edited_user_id integer,
    step_counter character varying(100),
    description text,
    type character varying(100),
    safety_and_precautions character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

