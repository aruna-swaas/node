CREATE TABLE regulation.eqms_reg_department_user_count (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_pmf_general_information_id integer,
    fk_eqms_organization_department_id integer,
    user_count integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

