CREATE TABLE regulation.eqms_reg_pmf_general_information (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_plant_master_file_id integer,
    company_profile character varying,
    facility_profile character varying,
    manufacturing_activity character varying,
    other_manufacturing_activity character varying,
    exact_address character varying,
    product_manufactured_type character varying,
    site_short_description character varying,
    outside_tech_assistance character varying,
    qms_short_description character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

