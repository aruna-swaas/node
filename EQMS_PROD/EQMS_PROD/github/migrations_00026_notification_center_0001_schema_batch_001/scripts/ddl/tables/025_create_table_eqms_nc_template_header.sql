CREATE TABLE notification_center.eqms_nc_template_header (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_provider_type_master_id integer,
    fk_eqms_nc_provider_header_id integer,
    template_name character varying(100),
    template_subject character varying(255),
    template_body text,
    is_template_html integer,
    is_type_template integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    ref_id integer 
);

