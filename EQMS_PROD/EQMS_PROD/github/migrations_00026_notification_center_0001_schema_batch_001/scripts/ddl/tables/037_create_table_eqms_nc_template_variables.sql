CREATE TABLE notification_center.eqms_nc_template_variables (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_nc_template_header_id integer,
    template_variables character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

