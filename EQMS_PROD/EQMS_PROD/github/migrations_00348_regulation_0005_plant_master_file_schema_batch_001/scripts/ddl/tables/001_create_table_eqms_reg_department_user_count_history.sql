CREATE TABLE regulation.eqms_reg_department_user_count_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_reg_department_user_count_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_pmf_general_information_id integer,
    fk_eqms_organization_department_id integer,
    user_count integer,
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

