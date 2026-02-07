CREATE TABLE pre_production.eqms_pre_prod_final_oqc_pack_prot_jig (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_final_oqc_pack_prot_model_mapper_id integer,
    fk_eqms_jigs_type_id integer,
    fk_eqms_status_lk_id smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

