CREATE TABLE pre_production.eqms_pre_prod_process_validation_case_settings (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_process_validation_id integer,
    fk_eqms_pre_prod_case_settings_type_lk_id integer,
    critical_parameter character varying,
    case_setting character varying,
    result_expected character varying,
    result_measured_later integer,
    fk_eqms_status_lk_id smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

