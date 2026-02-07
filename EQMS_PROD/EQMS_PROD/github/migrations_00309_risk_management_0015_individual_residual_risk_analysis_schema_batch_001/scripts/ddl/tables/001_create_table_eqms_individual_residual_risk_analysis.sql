CREATE TABLE risk_management.eqms_individual_residual_risk_analysis (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_risk_id integer,
    justification character varying(3500),
    fk_eqms_selection_lk_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

