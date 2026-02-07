CREATE TABLE qc.eqms_sanity_check_inspection (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_purchase_order_part_detail_id integer,
    supply_reference_number character varying(100),
    supply_received integer,
    remarks character varying,
    status smallint,
    created_by integer,
    created_date timestamp without time zone,
    modified_by integer,
    modified_date timestamp without time zone 
);

