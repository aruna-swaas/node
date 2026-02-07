CREATE TABLE dnd.eqms_high_level_design_market_demography (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_high_level_design_id integer,
    fk_eqms_market_demography_sub_category_lk_id integer,
    is_applicable smallint,
    additional_details character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_organization_id integer,
    demography_value character varying(255) 
);

