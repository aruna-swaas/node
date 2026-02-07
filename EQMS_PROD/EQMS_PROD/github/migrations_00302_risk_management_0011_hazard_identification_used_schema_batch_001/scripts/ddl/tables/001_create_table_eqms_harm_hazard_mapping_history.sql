CREATE TABLE risk_management.eqms_harm_hazard_mapping_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_harm_hazard_mapping_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_hazard_id integer,
    fk_eqms_harm_lk_id integer,
    status smallint,
    record_status smallint DEFAULT 1 NOT NULL,
    version numeric(10,1) NOT NULL,
    valid_from_date timestamp without time zone NOT NULL,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone NOT NULL,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

