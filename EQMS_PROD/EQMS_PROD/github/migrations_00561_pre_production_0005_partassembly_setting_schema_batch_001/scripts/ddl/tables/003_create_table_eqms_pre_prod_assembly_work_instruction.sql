CREATE TABLE pre_production.eqms_pre_prod_assembly_work_instruction (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    description character varying(3500),
    part_legend character varying(255),
    jigs_settings_usage character varying(3500),
    estimated_hours numeric(10,1),
    type character varying(50),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_project_product_variants_id integer,
    fk_eqms_pre_prod_bom_applicable_settings_id integer 
);

