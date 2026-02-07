CREATE TABLE infrastructure.eqms_infrastructure_request_history (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fk_eqms_infrastructure_request_id integer,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_category_lk_id integer,
    fk_eqms_infrastructure_type_lk_id integer,
    infrastructure_name character varying(255),
    infrastructure_description character varying(3500),
    infrastructure_specification character varying(3500),
    required_date timestamp without time zone,
    record_status smallint DEFAULT 1,
    version numeric(10,1),
    valid_from_date timestamp without time zone,
    valid_to_date timestamp without time zone DEFAULT '2199-12-31 23:59:59'::timestamp without time zone,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    fk_eqms_status_lk_id integer 
);

