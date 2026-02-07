CREATE TABLE pre_production.eqms_pre_prod_iqa_exclusion (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    is_excluded_from_iqa smallint,
    justification character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_pre_prod_bom_applicable_settings_id integer 
);

