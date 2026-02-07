CREATE TABLE regulation.eqms_reg_market_clearance (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_dmf_executive_summary_id integer,
    fk_eqms_reg_regulatory_agency_lk_id integer,
    indication_use character varying,
    registration_status character varying,
    clearance_date timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

