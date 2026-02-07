CREATE TABLE organization.eqms_user_login_tracking (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_user_id integer,
    login_time timestamp without time zone,
    logout_time timestamp without time zone,
    ip_address character varying(255),
    user_agent_details text,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    fk_eqms_login_result_lk_id integer,
    user_login_counter integer 
);

