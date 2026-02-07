CREATE TABLE organization.eqms_pre_prod_installation_qualification_group_lk (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    ref_id integer,
    installation_qualification_group character varying,
    installation_qualification_group_type character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

