CREATE TABLE regulation.eqms_reg_dmf_executive_summary (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    eqms_tenant_key integer,
    fk_eqms_organization_id integer,
    fk_eqms_reg_device_master_file_id integer,
    novel_feature character varying,
    sterilization_information character varying,
    regulatory_status character varying,
    clinical_evaluation character varying,
    risk_management_controls character varying,
    declaration_conformity character varying,
    device_domestic_price character varying,
    non_viable_cell_tissue_derivative character varying,
    microbial_recombinant_origin_material character varying,
    irradiating_component_type character varying,
    status smallint,
    created_date timestamp without time zone,
    created_by integer,
    modified_date timestamp without time zone,
    modified_by integer 
);

