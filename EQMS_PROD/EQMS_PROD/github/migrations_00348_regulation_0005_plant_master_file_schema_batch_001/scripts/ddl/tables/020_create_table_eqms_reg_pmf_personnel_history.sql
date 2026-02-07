CREATE TABLE regulation.eqms_reg_pmf_personnel_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_reg_pmf_personnel_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_plant_master_file_id integer,
    organization_chart character varying,
    personnel_profile_summary character varying,
    training_arrangement_outline character varying,
    health_requirements character varying,
    personnel_hygiene_requirment character varying,
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

