CREATE TABLE vendor.eqms_vendor_re_evaluation_issues_responses_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_vendor_re_evaluation_issues_responses_id integer NOT NULL,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_re_evaluation_id integer,
    serial_number_part_product character varying(3500),
    issue_raised character varying(3500),
    resolution character varying(3500),
    effectiveness character varying(3500),
    status smallint,
    version numeric(10,1),
    record_status smallint DEFAULT 1,
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

