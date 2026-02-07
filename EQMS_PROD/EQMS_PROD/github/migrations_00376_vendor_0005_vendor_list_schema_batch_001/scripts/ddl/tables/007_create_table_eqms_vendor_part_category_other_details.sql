CREATE TABLE vendor.eqms_vendor_part_category_other_details (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_vendor_part_category_mapper_id integer,
    lead_time_days integer,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone,
    minimum_order_quantity integer 
);

