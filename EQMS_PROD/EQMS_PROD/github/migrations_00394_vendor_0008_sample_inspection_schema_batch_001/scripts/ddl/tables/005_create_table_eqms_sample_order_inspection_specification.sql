CREATE TABLE vendor.eqms_sample_order_inspection_specification (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_sample_order_inspection_criteria_id integer,
    fk_eqms_status_id integer,
    specification_title character varying(100),
    specification_description character varying(3500),
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

