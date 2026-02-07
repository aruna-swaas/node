CREATE TABLE pre_production.eqms_pre_prod_installation_qualification_metadata (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_process_validation_id integer,
    fk_eqms_pre_prod_installation_qualification_reporter_type_lk_id integer,
    is_iq_done_in_house smallint,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    reporter_name character varying(255) 
);

