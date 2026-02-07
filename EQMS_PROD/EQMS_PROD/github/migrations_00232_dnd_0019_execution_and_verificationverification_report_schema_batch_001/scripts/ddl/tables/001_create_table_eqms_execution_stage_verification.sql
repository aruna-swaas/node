CREATE TABLE dnd.eqms_execution_stage_verification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    software_version character varying(100),
    aim character varying(100),
    test_value character varying(100),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    test_result character varying(500),
    fk_eqms_verification_result_lk_id integer,
    fk_eqms_tested_user_id integer,
    tested_date date,
    fk_eqms_execution_stage_verification_plan_dir_id integer 
);

