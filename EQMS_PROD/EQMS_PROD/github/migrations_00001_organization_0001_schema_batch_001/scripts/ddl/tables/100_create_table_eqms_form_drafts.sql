CREATE TABLE organization.eqms_form_drafts (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_user_id integer,
    fk_eqms_form_id integer,
    fk_eqms_context_types_id integer,
    context_instance_id integer,
    draft_data jsonb,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

