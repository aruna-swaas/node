CREATE TABLE organization.eqms_user_login_tracking_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_user_login_tracking_id integer,
    eqms_tenant_key integer,
    fk_eqms_user_id integer,
    login_time timestamp without time zone,
    logout_time timestamp without time zone,
    ip_address character varying(255),
    user_agent_details text,
    status smallint,
    record_status smallint DEFAULT '1'::smallint,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    fk_eqms_login_result_lk_id integer,
    user_login_counter integer 
);

