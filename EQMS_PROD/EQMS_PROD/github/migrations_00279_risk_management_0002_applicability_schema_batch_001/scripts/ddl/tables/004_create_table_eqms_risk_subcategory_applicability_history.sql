CREATE TABLE risk_management.eqms_risk_subcategory_applicability_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_risk_subcategory_applicability_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    is_applicable smallint,
    response character varying(3500),
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_risk_category_applicability_id integer,
    subcategory_name character varying(3500),
    slug character varying(3500),
    fk_eqms_status_lk_id integer 
);

