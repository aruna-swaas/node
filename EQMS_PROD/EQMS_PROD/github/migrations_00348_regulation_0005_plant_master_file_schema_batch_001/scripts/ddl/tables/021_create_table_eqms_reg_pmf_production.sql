CREATE TABLE regulation.eqms_reg_pmf_production (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_plant_master_file_id integer,
    production_operations_description character varying,
    material_handling_arrangement character varying,
    reprocessing_rework_arrangement character varying,
    rejected_materials_handling character varying,
    process_validation_policy character varying,
    sterilization_facility_description character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

