CREATE TABLE dnd.eqms_design_installation_procedure_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_design_installation_procedure_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    fk_eqms_last_edited_user_id integer,
    step_counter character varying(100),
    description text,
    type character varying(100),
    safety_and_precautions character varying(100),
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

