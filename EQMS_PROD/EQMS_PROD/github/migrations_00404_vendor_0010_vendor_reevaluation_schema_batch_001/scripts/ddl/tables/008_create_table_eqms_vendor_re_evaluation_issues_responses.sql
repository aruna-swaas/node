CREATE TABLE vendor.eqms_vendor_re_evaluation_issues_responses (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_re_evaluation_id integer,
    serial_number_part_product character varying(3500),
    issue_raised character varying(3500),
    resolution character varying(3500),
    effectiveness character varying(3500),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

