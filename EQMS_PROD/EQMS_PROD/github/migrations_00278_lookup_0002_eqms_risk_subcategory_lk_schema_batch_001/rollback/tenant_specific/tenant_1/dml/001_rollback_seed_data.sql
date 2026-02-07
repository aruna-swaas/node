-- Rollback: Delete seed data from file lookup_only_001_LOOKUP.sql
-- Original file: lookup_only_001_LOOKUP.sql
-- Seed data file: 001_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 188 AND fk_eqms_risk_category_lk_id = 53 AND subcategory_name = 'Other hazards' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 187 AND fk_eqms_risk_category_lk_id = 52 AND subcategory_name = 'Outputs are required for essential performance of the device' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 186 AND fk_eqms_risk_category_lk_id = 52 AND subcategory_name = 'Output has limits in normal conditions, and in fault conditions can exceed the limits that could affection clinical function' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 185 AND fk_eqms_risk_category_lk_id = 52 AND subcategory_name = 'Output is necessary to perform Intended use of the product' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 184 AND fk_eqms_risk_category_lk_id = 51 AND subcategory_name = 'Ability of the user to select and perform corrective actions' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 183 AND fk_eqms_risk_category_lk_id = 51 AND subcategory_name = 'Ability of the user to intervene in or abort' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 182 AND fk_eqms_risk_category_lk_id = 51 AND subcategory_name = 'Awareness of user when intervention is required in an autonomously performed action is required' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 181 AND fk_eqms_risk_category_lk_id = 51 AND subcategory_name = 'Awareness of the user when autonomy generates an error or alarm or failure' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 180 AND fk_eqms_risk_category_lk_id = 50 AND subcategory_name = 'Patient private data is accessable' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 179 AND fk_eqms_risk_category_lk_id = 50 AND subcategory_name = 'Accessability by unauthrorised persons' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 178 AND fk_eqms_risk_category_lk_id = 50 AND subcategory_name = 'Does the device has Ethernet, USB, Serial ports and removable hard disks' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 177 AND fk_eqms_risk_category_lk_id = 49 AND subcategory_name = 'Does the finished goods area have protection from dust?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 176 AND fk_eqms_risk_category_lk_id = 49 AND subcategory_name = 'Are finished goods stored at the manufacturing stores?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 175 AND fk_eqms_risk_category_lk_id = 48 AND subcategory_name = 'Do 3rd party distributors store the product in their premises?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 174 AND fk_eqms_risk_category_lk_id = 47 AND subcategory_name = 'Can on-site service modify of the software?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 173 AND fk_eqms_risk_category_lk_id = 46 AND subcategory_name = 'Can the environment affect any Quality Tests?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 172 AND fk_eqms_risk_category_lk_id = 45 AND subcategory_name = 'Premature unpacking leading to device unable to be installed or usage' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 171 AND fk_eqms_risk_category_lk_id = 45 AND subcategory_name = 'Packaging require special tools to unpack causing delay in usage in emergency' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 170 AND fk_eqms_risk_category_lk_id = 45 AND subcategory_name = 'Does packaging compatible with the environment of transportation and storage' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 169 AND fk_eqms_risk_category_lk_id = 45 AND subcategory_name = 'Is the packaging compatible with the transportation modes' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 168 AND fk_eqms_risk_category_lk_id = 44 AND subcategory_name = 'Safety Critical Parts sourcing issues?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 167 AND fk_eqms_risk_category_lk_id = 43 AND subcategory_name = 'Mechanical Assembly with screws and bolts as fasteners' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 166 AND fk_eqms_risk_category_lk_id = 43 AND subcategory_name = 'Any special process like 3D Printing, Soldering and others.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 165 AND fk_eqms_risk_category_lk_id = 43 AND subcategory_name = 'Is Welding done?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 164 AND fk_eqms_risk_category_lk_id = 43 AND subcategory_name = 'Is coating done?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 163 AND fk_eqms_risk_category_lk_id = 43 AND subcategory_name = 'Is painting done?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 162 AND fk_eqms_risk_category_lk_id = 43 AND subcategory_name = 'Are there any residues or unwanted particles introduced into the product during manufacturing?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 161 AND fk_eqms_risk_category_lk_id = 42 AND subcategory_name = 'How are the resettable devices reset?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 160 AND fk_eqms_risk_category_lk_id = 42 AND subcategory_name = 'Does the device include any thermal cut outs or resettable overload current releases?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 159 AND fk_eqms_risk_category_lk_id = 41 AND subcategory_name = 'What is the state of the moving part following a power interruption?- Consider the uncontrolled movements.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 158 AND fk_eqms_risk_category_lk_id = 41 AND subcategory_name = 'Does the movement require continuous activation of any control?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 157 AND fk_eqms_risk_category_lk_id = 41 AND subcategory_name = 'Are there any movable guards and / or any protective measures incorporated?If applicable, list the characteristics of the protective measures used.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 156 AND fk_eqms_risk_category_lk_id = 41 AND subcategory_name = 'What are the controls provided to stop the movement of exposed moving parts? List its over travel effects.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 155 AND fk_eqms_risk_category_lk_id = 41 AND subcategory_name = 'Identify the characteristics of motion. - Consider speed, shape which can cause injury etc.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 154 AND fk_eqms_risk_category_lk_id = 41 AND subcategory_name = 'Intended function of the moving part.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 153 AND fk_eqms_risk_category_lk_id = 41 AND subcategory_name = 'Are there any exposed moving parts?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 152 AND fk_eqms_risk_category_lk_id = 40 AND subcategory_name = 'Whether the batteries used are rechargeable? - If so, consider overcharging, charge levels, excessive temperature, Fire due to explosion etc.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 151 AND fk_eqms_risk_category_lk_id = 40 AND subcategory_name = 'How are the batteries housed? - Consider ventilation for escaping gases, Accidental short circuit, Incorrect polarity of connection.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 150 AND fk_eqms_risk_category_lk_id = 40 AND subcategory_name = 'Is the battery essential for the normal operation?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 149 AND fk_eqms_risk_category_lk_id = 40 AND subcategory_name = 'What is the type of battery used?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 148 AND fk_eqms_risk_category_lk_id = 40 AND subcategory_name = 'Are there any user replaceable batteries?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 147 AND fk_eqms_risk_category_lk_id = 39 AND subcategory_name = 'Does the device receive power from other equipment? - Consider over current, Safety in drawing power etc.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 146 AND fk_eqms_risk_category_lk_id = 39 AND subcategory_name = 'Can the terminals be connected interchangeably?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 145 AND fk_eqms_risk_category_lk_id = 39 AND subcategory_name = 'What is the type of supply input required? (Single / 3 Phase / DC / Battery). List the power sources required for normal and safe operation.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 144 AND fk_eqms_risk_category_lk_id = 38 AND subcategory_name = 'Does the device produce any harmful physiological effect?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 143 AND fk_eqms_risk_category_lk_id = 37 AND subcategory_name = 'How are they identified? Can these parts be identified correctly?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 142 AND fk_eqms_risk_category_lk_id = 37 AND subcategory_name = 'Are there any detachable parts used in the device?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 141 AND fk_eqms_risk_category_lk_id = 36 AND subcategory_name = 'Can it be detached without the use of tool?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 140 AND fk_eqms_risk_category_lk_id = 36 AND subcategory_name = 'Are there any actuating mechanisms?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 139 AND fk_eqms_risk_category_lk_id = 35 AND subcategory_name = 'Does the device need any special handling measure during packing and unpacking?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 138 AND fk_eqms_risk_category_lk_id = 35 AND subcategory_name = 'Does the device need any special handling measure for transport or storage?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 137 AND fk_eqms_risk_category_lk_id = 34 AND subcategory_name = 'Does the use of device depend on essential performance?Essential performance means, performance necessary to achieve freedom from unacceptable risk. It is understood by considering whether its absence or degradation would result in an unacceptable risk. Example: The characteristics of the output of life-supporting devices or the operation of an alarm.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 136 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Does the device require handling of liquid for normal use?- Consider Leakage, Spillage etc.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 135 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Does the device include any liquid storage chamber?- Consider Leakage, overflow etc.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 134 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Does the device include parts to support loads? (Including patients and operators).' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 133 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Does the device include pressure control or relief device? - Consider its durability and its accessibility for maintenance.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 132 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Will a component failure result in excessive pressure? (Beyond the working limit).' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 131 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Does the device include hydraulic or pneumatic parts?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 130 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Does the device produce sound? (Other than auditory alarms).- Consider its loudness and duration of exposure' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 129 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Are there parts that can get expelled as a result of collision, expansion etc. How are they protected?- Consider parts such as springs, pressurised gas, rotating fly wheel, Lithium battery.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 128 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Are there any rough surfaces, sharp edges, sharp corners etc.?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 127 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'List the factors to be considered from the following.necessary grips, handles, wheels, brakes, mechanical stability and durability' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 126 AND fk_eqms_risk_category_lk_id = 33 AND subcategory_name = 'Is the device mobile or portable?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 125 AND fk_eqms_risk_category_lk_id = 32 AND subcategory_name = 'Can it be modified or get corrupted? If so what are the consequences?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 124 AND fk_eqms_risk_category_lk_id = 32 AND subcategory_name = 'Does the device hold data critical to patient care?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 123 AND fk_eqms_risk_category_lk_id = 31 AND subcategory_name = 'List them considering incorrect use of connectors, disabling safety features or alarms, neglect manufacturers recommended maintenance' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 122 AND fk_eqms_risk_category_lk_id = 31 AND subcategory_name = 'In what ways the device can be deliberately misused?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 121 AND fk_eqms_risk_category_lk_id = 30 AND subcategory_name = 'What are the risks of false alarms, missing alarms, disconnected alarms, unreliable remote alarms and medical staffs misunderstanding how the alarm works?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 120 AND fk_eqms_risk_category_lk_id = 30 AND subcategory_name = 'Does the device use an alarm system?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 119 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Are the parameters relevant to safety are indicated? How?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 118 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Can the user controls be set (intentionally or accidentally) so as to get output exceeding the safe limit.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 117 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Can the user interface be used to initiate user actions?List them considering the following.-Possibility of initiating a deliberate action for the user to enter a controlled operation mode, which enlarges the risks for the patient and which creates awareness for the user for this condition.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 116 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Will the medical device be used by persons with special needs?List them considering the following.-the user, their mental and physical abilities, skill and training, ergonomic aspects, the use environment, installation requirements, and the patients capability to control or influence the use of the medical device. Special attention should be paid to users with special needs, such as handicapped persons, the elderly and children. Their special needs might include assistance by another person to enable the use of a medical device. Is the medical device intended to be used by individuals with various skill levels and cultural backgrounds?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 115 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Is the medical device controlled by a menu?List them considering the following.-Complexity and number of layers, awareness of state, location of settings, navigation method, number of steps per action, sequence clarity and memorization problems, and importance of control function relative to its accessibility and the impact of deviating from specified operating procedures.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 114 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Does the medical device display information?List them considering the following. -Visibility in various environments, orientation, the visual capabilities of the user, populations and perspectives, clarity of the presented information, units, colour coding, and theaccessibility of critical information.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 113 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Does the medical device have a control interface?List them considering the following.-spacing, coding, grouping, mapping, modes of feedback, blunders, slips, visibility, control differentiation, direction of activation or change, whether the controls are continuous ordiscrete, and the reversibility of settings or actions.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 112 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Does the medical device have connecting parts or accessories?List them considering the following.- Possibility of wrong connections, possibility of connecting to other outlets, similarity to other products, connections, connection force, feedback on connection integrity and Over- and under-tightening.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 111 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Is the medical device used in an environment where distractions can cause use errors?List them considering the following.- consequences of use error, - whether the distractions are commonplace, - whether the user can be disturbed by an infrequent distraction.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 110 AND fk_eqms_risk_category_lk_id = 29 AND subcategory_name = 'Can the user interface design features contribute to use error?List them considering the following.Examples of interface design are control and indicators, symbols used, ergonomic features, physical design and layout, hierarchy of operation, menus for software driven devices, visibility of warnings, audibility of alarms, standardisation of colour coding.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 109 AND fk_eqms_risk_category_lk_id = 28 AND subcategory_name = 'Will new manufacturing process need to be established or introduced?(Consider new technology or new scale of production)' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 108 AND fk_eqms_risk_category_lk_id = 27 AND subcategory_name = 'List the safety precautions to be followed while replacing the parts by User / Service personnel.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 107 AND fk_eqms_risk_category_lk_id = 27 AND subcategory_name = 'Whether retraining or recertification of operators or service personnel required? (based on expected life)' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 106 AND fk_eqms_risk_category_lk_id = 27 AND subcategory_name = 'Is it possible that the device is likely to be installed by people without necessary skills after it has been handed over to the end user?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND fk_eqms_risk_category_lk_id = 27 AND subcategory_name = 'Whether safe use information is provided directly to the end user or through third parties (Installers, health care providers, pharmacists etc.) and whether this will have implications on training?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 104 AND fk_eqms_risk_category_lk_id = 26 AND subcategory_name = 'Who will be installing the device and what is the skill level and training required for person installing it?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 103 AND fk_eqms_risk_category_lk_id = 26 AND subcategory_name = 'Does the installation or use of the device require special training or skills?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 102 AND fk_eqms_risk_category_lk_id = 25 AND subcategory_name = 'Factor that should be considered including the waste products that are generated during the disposal of the medical device itself' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 101 AND fk_eqms_risk_category_lk_id = 25 AND subcategory_name = 'Is safe decommissioning or disposal of the medical device necessary?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND fk_eqms_risk_category_lk_id = 24 AND subcategory_name = 'Will it be obvious after device is used?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 99 AND fk_eqms_risk_category_lk_id = 24 AND subcategory_name = 'Does the device self-destruct after single use?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND fk_eqms_risk_category_lk_id = 24 AND subcategory_name = 'Is the medical device intended for single use?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND fk_eqms_risk_category_lk_id = 23 AND subcategory_name = 'Does ageing determine the life time of the device?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 96 AND fk_eqms_risk_category_lk_id = 23 AND subcategory_name = 'What is the battery depletion period?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 95 AND fk_eqms_risk_category_lk_id = 23 AND subcategory_name = 'What determines the lifetime of the device?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 94 AND fk_eqms_risk_category_lk_id = 22 AND subcategory_name = 'What are the arrangements done to prevent the movement of internal parts and wiring?- Consider unintentional movement of parts.- Consider detachment of connectors between different parts of the system.- Consider the damage caused while closing or opening access covers' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 93 AND fk_eqms_risk_category_lk_id = 22 AND subcategory_name = 'Are mechanical forces to which the device is to be subjected are under the control of the user or controlled by interaction with other persons?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND fk_eqms_risk_category_lk_id = 22 AND subcategory_name = 'To what mechanical forces the device will be subjected to?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 91 AND fk_eqms_risk_category_lk_id = 21 AND subcategory_name = 'What are the ergonomic and cumulative effects of the medical devices?(Examples saline corrodes over time, mechanical fatigue, loosening of straps, vibration effects, long term material degradation)' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 90 AND fk_eqms_risk_category_lk_id = 21 AND subcategory_name = 'Are there any delayed or long term use effects?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 89 AND fk_eqms_risk_category_lk_id = 20 AND subcategory_name = 'What are the disposal methods used for medical devices after expiration date?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 88 AND fk_eqms_risk_category_lk_id = 20 AND subcategory_name = 'What are the labelling instructions or indicators provided?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 87 AND fk_eqms_risk_category_lk_id = 20 AND subcategory_name = 'Does the device has restricted shelf life?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Miscellaneous:Memory leaks due to dynamic allocation of memorySystem deadlocksRe-entrancyStack overflowLogic errors or syntax (source code analysis)Infinite loopsCode corruptionDead codeIncorrect conditional codeUnintended macro side-effectsResource depletionIncorrect alarm/alert prioritisationUnauthorised featuresIncorrect order of operations / precedenceSafe state' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Interface Issues:Failing to update displayMulti user load issuesConfiguration errorsWrong driversBad patches / updatesSOUP failure modesVirusBrowser / Web incompatibility' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 84 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Data Issues:Data corruptionResource contention issuesErrant pointersData conversion errors: Type casting, ScalingAveraged data out of rangeRolloversVolatile DataUnintended aliasingUse of intermediate data' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 83 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Moding:Abnormal terminationPower loss, recovery, sequencing problemsStart-up/shut-down AnomaliesEnter / Exit of low power modes' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 82 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Timing:Race conditionsMissed time deadlinesMissed interruptsExcessive jitter in outputsWatchdog time-outs' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 81 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Hardware Related:EPROM usage; long access time, wear outCPU / Hardware failureNoisePeripheral Interface Anomalies' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Arithmetic:Divide by Zero Runtime error traps, defensive codingNumeric overflow / underflowFloating point roundingImproper range / bounds checkingOff-By-One (OBO)' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Authenticity of software upgrade' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Does it need to be installed / modified / exchanged / verified by the user and/or operator?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND fk_eqms_risk_category_lk_id = 19 AND subcategory_name = 'Does the device contain software?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND fk_eqms_risk_category_lk_id = 18 AND subcategory_name = 'Traceability of the calibrator to higher order reference' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND fk_eqms_risk_category_lk_id = 18 AND subcategory_name = 'Any special substance/ equipment necessary for proper calibration/maintenance?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND fk_eqms_risk_category_lk_id = 18 AND subcategory_name = 'Maintenance to be carried out by User, specialist, operator.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND fk_eqms_risk_category_lk_id = 18 AND subcategory_name = 'Parts that need maintenance?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND fk_eqms_risk_category_lk_id = 18 AND subcategory_name = 'Is maintenance and/or calibration necessary?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND fk_eqms_risk_category_lk_id = 17 AND subcategory_name = 'Are the accompanying documents provided as soft copy?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND fk_eqms_risk_category_lk_id = 17 AND subcategory_name = 'Restrictions on users in selection of consumables and accessories' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND fk_eqms_risk_category_lk_id = 17 AND subcategory_name = 'Specifications of consumables or accessories' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND fk_eqms_risk_category_lk_id = 17 AND subcategory_name = 'Are there essential consumables or accessories associated with the unit?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 67 AND fk_eqms_risk_category_lk_id = 16 AND subcategory_name = 'Does the device influence the environment?- Consider effect on power and cooling supplies, emission of toxic materials and generation of EMI' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 66 AND fk_eqms_risk_category_lk_id = 15 AND subcategory_name = 'Is the device affected by any of the following? How?- Operational environments, Transport and storage environments, Light, Temperature, Vibration, Spillage, Susceptibility to variations in power and cooling supplies, Electromagnetic interference' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 65 AND fk_eqms_risk_category_lk_id = 15 AND subcategory_name = 'Is the device susceptible to environmental influence?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 64 AND fk_eqms_risk_category_lk_id = 14 AND subcategory_name = 'Is the unwanted substance in any of the following form? Discharge of chemicals, waste products and body fluids' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 63 AND fk_eqms_risk_category_lk_id = 14 AND subcategory_name = 'Is the unwanted energy in the form of following? -Noise and vibration, heat, radiation (including ionizing, non-ionizing, ultraviolet, visible, infrared radiation), contact temperature, leakage currents, electric and/or magnetic fields' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 62 AND fk_eqms_risk_category_lk_id = 14 AND subcategory_name = 'Are there unwanted energy or substances?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND fk_eqms_risk_category_lk_id = 13 AND subcategory_name = 'Potential problems using with medical technologies - Consider the possibilities of operator getting shock from these parts during shock delivery.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 60 AND fk_eqms_risk_category_lk_id = 13 AND subcategory_name = 'Whether the device uses any DF protected applied parts. List them.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND fk_eqms_risk_category_lk_id = 13 AND subcategory_name = 'Potential problem using with medicines' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND fk_eqms_risk_category_lk_id = 13 AND subcategory_name = 'Medical technologies used with the device' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_risk_category_lk_id = 13 AND subcategory_name = 'Are any medicines used along with the device?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND fk_eqms_risk_category_lk_id = 12 AND subcategory_name = 'Unintended application of data or algorithm' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND fk_eqms_risk_category_lk_id = 12 AND subcategory_name = 'Kind of algorithms used or its confidence limits' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND fk_eqms_risk_category_lk_id = 12 AND subcategory_name = 'Does the device present conclusions based on input or acquired data?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND fk_eqms_risk_category_lk_id = 12 AND subcategory_name = 'Is the device interpretative?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND fk_eqms_risk_category_lk_id = 11 AND subcategory_name = 'What is the accuracy and the precision of the measurement result?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND fk_eqms_risk_category_lk_id = 11 AND subcategory_name = 'What are variables that need to be measured?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_risk_category_lk_id = 11 AND subcategory_name = 'Is the device used to take measurement?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND fk_eqms_risk_category_lk_id = 10 AND subcategory_name = 'Which are factors (temperature, humidity, atmospheric gas composition, pressure and light) that needed to be modified?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND fk_eqms_risk_category_lk_id = 10 AND subcategory_name = 'Is the device intended to modify the patient environment?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND fk_eqms_risk_category_lk_id = 9 AND subcategory_name = 'Influence of design on effectiveness of routine cleaning and disinfection and effect of cleaning and disinfecting agents on safety and performance of the device.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_risk_category_lk_id = 9 AND subcategory_name = 'Limitations on number of cleaning cycles.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND fk_eqms_risk_category_lk_id = 9 AND subcategory_name = 'Type of cleaning and disinfectants to be used.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND fk_eqms_risk_category_lk_id = 9 AND subcategory_name = 'Is the device intended to be routinely cleaned and disinfected by the user?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND fk_eqms_risk_category_lk_id = 8 AND subcategory_name = 'Impact of other sterilisaion methods not intended by the manufacturer' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND fk_eqms_risk_category_lk_id = 8 AND subcategory_name = 'What is the method of product sterilization?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND fk_eqms_risk_category_lk_id = 8 AND subcategory_name = 'Are there any limitations on number of re-use cycles?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND fk_eqms_risk_category_lk_id = 8 AND subcategory_name = 'Are there any shelf life issues?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND fk_eqms_risk_category_lk_id = 8 AND subcategory_name = 'Whether it is for single use of re-use?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_risk_category_lk_id = 8 AND subcategory_name = 'Whether the device and its accessories supplied are sterile?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_risk_category_lk_id = 7 AND subcategory_name = 'Name the type of processes and substances processed.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_risk_category_lk_id = 7 AND subcategory_name = 'Does the device process any biological materials for reuse, transfusion or transplantation?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_risk_category_lk_id = 6 AND subcategory_name = 'Minimum and maximum transfer rates and control thereof' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_risk_category_lk_id = 6 AND subcategory_name = 'Is it a single substance or a range of substances?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_risk_category_lk_id = 6 AND subcategory_name = 'Is the device intended to deliver or extract substance from the patient?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_risk_category_lk_id = 5 AND subcategory_name = 'Are the energy levels higher than those currently used in similar device?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_risk_category_lk_id = 5 AND subcategory_name = 'Duration of energy transfer' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_risk_category_lk_id = 5 AND subcategory_name = 'Quantity of energy transferred' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_risk_category_lk_id = 5 AND subcategory_name = 'Quality of energy transferred' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_risk_category_lk_id = 5 AND subcategory_name = 'Is transfer of energy controllable?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_risk_category_lk_id = 5 AND subcategory_name = 'Is energy delivered or extracted from the patient?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_risk_category_lk_id = 4 AND subcategory_name = 'Are there any conductive parts that can come in contact with the operator when the operator is touching the patient?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_risk_category_lk_id = 4 AND subcategory_name = 'Are there any parts that come in contact with the patient but fall outside the definition of applied parts? - Consider the parts that can come in contact with the unconscious patients.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_risk_category_lk_id = 4 AND subcategory_name = 'Are there any compatibility issues with relevant substances or with body tissues or body fluids?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_risk_category_lk_id = 4 AND subcategory_name = 'Whether the characteristics relevant to safety are known?- Consider heat, moisture, mechanical forces, electrical voltages etc.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_risk_category_lk_id = 4 AND subcategory_name = 'Is the device manufactured with materials of animal origin?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_risk_category_lk_id = 4 AND subcategory_name = 'What materials or components are utilized in the medical device or are used with, or are in contact with, the medical device?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_risk_category_lk_id = 3 AND subcategory_name = 'Whether the parts that come in contact with the patient get cooled below the ambient temperature. If so what is likely to be the temperature?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_risk_category_lk_id = 3 AND subcategory_name = 'Whether the parts that come in contact with the patient supply heat to the patient. If so, what is likely to the temperature?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_risk_category_lk_id = 3 AND subcategory_name = 'Period and frequency of contact' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_risk_category_lk_id = 3 AND subcategory_name = 'Nature of contact- Surface/Invasive/Implantation' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_risk_category_lk_id = 3 AND subcategory_name = 'Is the device intended to be in contact with the patient or other persons?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_risk_category_lk_id = 2 AND subcategory_name = 'Reversibility of implantation' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_risk_category_lk_id = 2 AND subcategory_name = 'Expected lifetime of the implant' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_risk_category_lk_id = 2 AND subcategory_name = 'Effect of ageing of implant performance' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_risk_category_lk_id = 2 AND subcategory_name = 'Characteristics of patient population, age, weight and physical activity' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_risk_category_lk_id = 2 AND subcategory_name = 'Location of implantation' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_risk_category_lk_id = 2 AND subcategory_name = 'Is the device intended to be implanted?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'Can the device be affected with unauthorised access or activity' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'Can the device intended use be affected by breach of security' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'What are the Contra indications' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'In what environments the device will be used. - Consider the use of device in Oxygen rich environment, in conjunction with flammable agents, generation of heat, fire etc.' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'Is special intervention necessary in case of failure of the device?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'Does the device sustain life or support life?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'What are the indications of use (e.g. patient population)?' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'What roles the device is intended for? - Diagnosis, prevention, monitoring, treatment or alleviation of disease, compensation for injury or handicap, replacement or modification of anatomy, control of conception' AND status = 1;

-- Delete from organization.eqms_risk_subcategory_lk
DELETE FROM organization.eqms_risk_subcategory_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_risk_category_lk_id = 1 AND subcategory_name = 'Intended use and how it is to be used?' AND status = 1;

END $$;
