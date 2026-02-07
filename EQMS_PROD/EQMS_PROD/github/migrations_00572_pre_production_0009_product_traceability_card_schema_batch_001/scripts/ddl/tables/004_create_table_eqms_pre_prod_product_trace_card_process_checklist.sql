CREATE TABLE pre_production.eqms_pre_prod_product_trace_card_process_checklist (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_pre_prod_product_traceability_card_id integer,
    fk_eqms_pre_prod_product_process_checklist_group_lk_id integer,
    fk_eqms_pre_prod_product_process_checklist_lk_id integer,
    fk_eqms_status_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_project_id integer 
);

