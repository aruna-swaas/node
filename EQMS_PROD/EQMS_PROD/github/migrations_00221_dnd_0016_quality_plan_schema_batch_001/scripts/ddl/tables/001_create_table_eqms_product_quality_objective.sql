CREATE TABLE dnd.eqms_product_quality_objective (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_product_realization_plan_id integer,
    quality_objectives character varying(255),
    measure_of_objectives character varying(255),
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

