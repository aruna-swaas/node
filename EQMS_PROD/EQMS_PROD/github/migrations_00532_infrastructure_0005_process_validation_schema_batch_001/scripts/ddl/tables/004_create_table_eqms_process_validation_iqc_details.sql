CREATE TABLE infrastructure.eqms_process_validation_iqc_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_process_validation_iqc_id integer,
    fk_eqms_verification_result_lk_id integer,
    fk_eqms_iqc_group_lk_id integer,
    parameter_name character varying(3500),
    requirement_specification character varying(3500),
    measurement character varying(3500),
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

