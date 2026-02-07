CREATE TABLE regulation.eqms_reg_serious_adverse_event (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_dmf_executive_summary_id integer,
    serious_adverse_event character varying,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    sae_reported_count integer,
    total_unit_sold integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

