CREATE TABLE abac.eqms_form_control_actions (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_form_controls_id integer,
    requires_role_validation boolean DEFAULT false,
    is_transition_action boolean DEFAULT true,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

