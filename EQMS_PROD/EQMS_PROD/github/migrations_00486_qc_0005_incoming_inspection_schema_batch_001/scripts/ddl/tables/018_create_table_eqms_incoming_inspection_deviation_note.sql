CREATE TABLE qc.eqms_incoming_inspection_deviation_note (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_incoming_inspection_results_id integer,
    deviation_reason character varying(2500),
    deviation_comments character varying(2500),
    decision_reason character varying(2500),
    fk_eqms_selection_lk_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

