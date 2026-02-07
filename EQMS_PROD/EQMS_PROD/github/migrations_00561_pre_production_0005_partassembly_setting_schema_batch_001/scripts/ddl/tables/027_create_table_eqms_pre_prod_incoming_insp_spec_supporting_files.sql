CREATE TABLE pre_production.eqms_pre_prod_incoming_insp_spec_supporting_files (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_incoming_inspection_specification_id integer,
    fk_eqms_file_id integer,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

