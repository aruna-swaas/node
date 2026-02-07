CREATE TABLE dnd.eqms_product_realization_plan (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_project_id integer,
    reference_design_document character varying(255),
    processes_sequence character varying(255),
    resource_competency_plan character varying(255),
    infrastruture_plan character varying(255),
    safety_and_env_cleanliness character varying(255),
    process_measurements_plan character varying(255),
    product_disposition_method character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

