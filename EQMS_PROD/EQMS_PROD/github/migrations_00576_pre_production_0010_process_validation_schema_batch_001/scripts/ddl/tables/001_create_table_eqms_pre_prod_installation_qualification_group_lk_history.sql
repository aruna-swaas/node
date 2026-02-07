CREATE TABLE pre_production.eqms_pre_prod_installation_qualification_group_lk_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_pre_prod_installation_qualification_group_lk_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    installation_qualification_group character varying,
    installation_qualification_group_type character varying,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

