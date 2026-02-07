CREATE TABLE vendor.eqms_sample_order_inspection (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer NOT NULL,
    fk_eqms_sample_orders_id integer NOT NULL,
    supply_reference_number character varying(100),
    supply_received integer,
    quality_received integer,
    inspection_quantity integer,
    remarks character varying(2500),
    qc_result smallint,
    status smallint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_date timestamp without time zone NOT NULL,
    modified_by integer NOT NULL,
    fk_eqms_part_lk_id integer,
    fk_eqms_verification_result_lk_id integer,
    fk_eqms_sample_inspection_procedure_files_id integer 
);

