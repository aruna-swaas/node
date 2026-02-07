CREATE TABLE dnd.eqms_product_life_declaration_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_product_life_declaration_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    conclusion character varying(500),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_execution_stage_verification_plan_dir_id integer 
);

