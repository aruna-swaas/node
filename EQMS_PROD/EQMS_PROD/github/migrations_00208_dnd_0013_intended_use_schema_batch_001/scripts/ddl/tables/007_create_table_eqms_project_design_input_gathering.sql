CREATE TABLE dnd.eqms_project_design_input_gathering (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_project_id integer,
    contraindications_of_use character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    intended_use character varying(255) 
);

