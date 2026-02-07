-- Create schema
CREATE SCHEMA IF NOT EXISTS sales;

CREATE TABLE sales.eqms_sales_forecast (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    version numeric(10,1) DEFAULT 1.0,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_product_variants_id integer,
    fk_eqms_month_lk_id integer,
    fk_eqms_year_lk_id integer,
    status smallint 
);

