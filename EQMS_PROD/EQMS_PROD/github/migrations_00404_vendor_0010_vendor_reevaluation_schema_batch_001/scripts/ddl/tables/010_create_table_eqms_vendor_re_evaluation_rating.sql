CREATE TABLE vendor.eqms_vendor_re_evaluation_rating (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_re_evaluation_id integer,
    fk_eqms_performance_quality_rating_id integer,
    fk_eqms_performance_delivery_rating_id integer,
    fk_eqms_performance_support_rating_id integer,
    overall_rating integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

