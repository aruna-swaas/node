CREATE TABLE regulation.eqms_reg_pmf_personnel (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_plant_master_file_id integer,
    organization_chart character varying,
    personnel_profile_summary character varying,
    training_arrangement_outline character varying,
    health_requirements character varying,
    personnel_hygiene_requirment character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

