CREATE TABLE infrastructure.eqms_infrastructure_request (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_category_lk_id integer,
    fk_eqms_infrastructure_type_lk_id integer,
    infrastructure_name character varying(255),
    infrastructure_description character varying(3500),
    infrastructure_specification character varying(3500),
    required_date timestamp without time zone,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

