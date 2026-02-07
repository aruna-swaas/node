CREATE TABLE organization.eqms_user_authentication_refresh_token (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_user_id integer,
    refresh_token character varying(3500),
    created_on timestamp without time zone,
    expires_on timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer 
);

