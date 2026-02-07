CREATE TABLE sales.eqms_sales_forecast_detail (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_sales_forecast_id integer,
    fk_eqms_priority_lk_id integer,
    remarks character varying(500),
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    units_required integer 
);

