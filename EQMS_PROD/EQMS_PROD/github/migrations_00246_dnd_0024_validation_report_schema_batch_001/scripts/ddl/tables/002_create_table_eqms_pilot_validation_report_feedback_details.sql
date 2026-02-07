CREATE TABLE dnd.eqms_pilot_validation_report_feedback_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pilot_validation_report_id integer,
    fk_eqms_decision_lk_id integer,
    fk_eqms_product_functional_blocks_id integer,
    feedback_details character varying(500),
    value character varying(50),
    comments character varying(500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_selection_lk_id integer 
);

