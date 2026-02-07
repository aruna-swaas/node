CREATE TABLE dnd.eqms_design_transfer_manufacturing_actions (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    fk_eqms_owner_employee_id integer,
    fk_eqms_design_output_document_id integer,
    description text,
    input_comments character varying(100),
    other_details character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

