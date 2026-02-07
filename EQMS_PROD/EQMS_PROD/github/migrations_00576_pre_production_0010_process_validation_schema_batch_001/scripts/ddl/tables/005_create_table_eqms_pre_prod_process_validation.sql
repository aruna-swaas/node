CREATE TABLE pre_production.eqms_pre_prod_process_validation (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_product_trace_card_process_checklist_id integer,
    fk_eqms_pre_prod_process_validation_type_lk_id integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

