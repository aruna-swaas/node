CREATE TABLE organization.eqms_users (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_user_status_lk_id integer,
    external_user_id uuid,
    encrypted_user_nick_name character varying,
    user_last_login timestamp without time zone,
    user_status_reason character varying(255),
    status smallint,
    version numeric(10,1) DEFAULT 1.0,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_employee_id integer,
    fk_eqms_organization_site_id integer 
);

