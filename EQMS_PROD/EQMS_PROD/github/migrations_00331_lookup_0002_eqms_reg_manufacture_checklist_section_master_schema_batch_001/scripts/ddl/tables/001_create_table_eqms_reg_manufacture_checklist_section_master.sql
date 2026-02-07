CREATE TABLE organization.eqms_reg_manufacture_checklist_section_master (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_manufacture_license_template_id integer,
    section_no character varying(20),
    checklist_name text,
    description character varying(255),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    ref_id integer 
);

