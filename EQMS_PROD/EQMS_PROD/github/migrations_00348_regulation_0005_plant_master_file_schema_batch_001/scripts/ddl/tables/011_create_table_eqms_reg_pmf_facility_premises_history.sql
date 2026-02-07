CREATE TABLE regulation.eqms_reg_pmf_facility_premises_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_reg_pmf_facility_premises_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_plant_master_file_id integer,
    premises_layout_with_scale character varying,
    construction_finishes_fixtures character varying,
    ventilation_system_description character varying,
    hazardous_material_handling_areas character varying,
    water_system_description character varying,
    premises_preventive_maintenance_description character varying,
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

