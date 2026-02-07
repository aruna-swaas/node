CREATE TABLE qc.eqms_incoming_inspection_deviation_note_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_incoming_inspection_deviation_note_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_incoming_inspection_results_id integer,
    deviation_reason character varying(2500),
    deviation_comments character varying(2500),
    decision_reason character varying(2500),
    fk_eqms_selection_lk_id integer,
    status smallint,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

