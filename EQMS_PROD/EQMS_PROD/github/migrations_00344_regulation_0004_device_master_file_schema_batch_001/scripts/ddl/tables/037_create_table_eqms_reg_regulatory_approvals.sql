CREATE TABLE regulation.eqms_reg_regulatory_approvals (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_dmf_executive_summary_id integer,
    fk_eqms_reg_country_lk_id integer,
    approved_indication character varying,
    approved_shelf_life character varying,
    device_class character varying,
    approved_date timestamp without time zone,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

