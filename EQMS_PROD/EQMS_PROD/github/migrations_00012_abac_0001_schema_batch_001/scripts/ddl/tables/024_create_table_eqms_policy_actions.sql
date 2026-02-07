CREATE TABLE abac.eqms_policy_actions (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_policy_id integer,
    fk_eqms_action_lk_id integer NOT NULL,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

