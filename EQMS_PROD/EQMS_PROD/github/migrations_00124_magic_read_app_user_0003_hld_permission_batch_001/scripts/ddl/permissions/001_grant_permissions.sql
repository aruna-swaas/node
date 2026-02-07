-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_high_level_design TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_high_level_design_comp_landscape TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_high_level_design_conversion_rate TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_high_level_design_info TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_high_level_design_market_demography TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_high_level_design_market_segment TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_high_level_design_requirements TO magic_read_app_user;