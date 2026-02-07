CREATE TABLE dnd.eqms_high_level_design (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_project_id integer,
    high_level_design_document_title character varying,
    status smallint,
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    fk_eqms_owner_id integer 
);

