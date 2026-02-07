CREATE TABLE abac.eqms_form_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_form_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    form_name character varying(100),
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    eqms_form_type_lk integer,
    is_parallel_allowed boolean DEFAULT true,
    completion_tracking boolean DEFAULT false,
    fk_eqms_entity_subscription_id integer 
);

