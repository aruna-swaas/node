CREATE TABLE dnd.eqms_product_realization_stage_process (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_product_realization_plan_id integer,
    stage character varying(50),
    responsibility character varying(2500),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer,
    year_value integer,
    fk_eqms_month_lk_id integer 
);

