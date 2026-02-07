CREATE TABLE dnd.eqms_pnd_end_user_chosen_requirements_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pnd_end_user_chosen_requirements_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pnd_item_id integer,
    fk_eqms_target_audience_type_lk_id integer,
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

