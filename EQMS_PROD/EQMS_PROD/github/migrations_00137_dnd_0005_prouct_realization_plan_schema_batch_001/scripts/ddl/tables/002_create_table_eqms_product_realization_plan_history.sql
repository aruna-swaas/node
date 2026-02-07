CREATE TABLE dnd.eqms_product_realization_plan_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_product_realization_plan_id integer,
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
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

