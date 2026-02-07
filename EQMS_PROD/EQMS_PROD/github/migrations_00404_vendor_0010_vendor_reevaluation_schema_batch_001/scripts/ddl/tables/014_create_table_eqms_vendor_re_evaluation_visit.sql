CREATE TABLE vendor.eqms_vendor_re_evaluation_visit (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_re_evaluation_id integer,
    design_observation character varying(3500),
    manufacturing_observation character varying(3500),
    quality_control_observation character varying(3500),
    logistics_observation character varying(3500),
    customer_support_observation character varying(3500),
    conclusion character varying(3500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

