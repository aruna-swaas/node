-- Create schema
CREATE SCHEMA IF NOT EXISTS infrastructure;

CREATE TABLE infrastructure.eqms_maintenance_plan (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_infrastructure_category_lk_id integer,
    fk_eqms_infrastructure_type_lk_id integer,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    fk_eqms_status_lk_id integer 
);

