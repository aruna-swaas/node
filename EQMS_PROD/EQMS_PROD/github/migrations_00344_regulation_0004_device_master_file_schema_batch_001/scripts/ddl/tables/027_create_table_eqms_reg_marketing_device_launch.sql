CREATE TABLE regulation.eqms_reg_marketing_device_launch (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_dmf_executive_summary_id integer,
    year character varying,
    nos_marketed_qty character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

