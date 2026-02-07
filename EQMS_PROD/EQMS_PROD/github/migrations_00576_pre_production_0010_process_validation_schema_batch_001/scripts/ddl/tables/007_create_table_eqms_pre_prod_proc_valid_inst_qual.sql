CREATE TABLE pre_production.eqms_pre_prod_proc_valid_inst_qual (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_installation_qualification_metadata_id integer,
    fk_eqms_pre_prod_installation_qualification_group_lk_id integer,
    parameter character varying,
    requirements_specifications character varying,
    measurement character varying,
    fk_eqms_verification_result_lk_id integer,
    fk_eqms_status_lk_id smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

