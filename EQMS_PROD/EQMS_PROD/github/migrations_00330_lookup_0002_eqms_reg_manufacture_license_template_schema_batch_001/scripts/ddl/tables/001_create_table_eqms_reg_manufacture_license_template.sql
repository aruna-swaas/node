CREATE TABLE organization.eqms_reg_manufacture_license_template (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    template_code character varying(20),
    template_type character varying(100),
    description character varying(255),
    version character varying(20) DEFAULT '1.0'::character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    ref_id integer 
);

