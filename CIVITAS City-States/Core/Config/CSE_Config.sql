/*
	Config
	Authors: SeelingCat
*/

-- FAVOR FROM SUZERAINS

INSERT OR REPLACE INTO Parameters
		(ParameterId,
		Name,
		Description,
		Domain,
		DefaultValue,
		ConfigurationGroup,
		ConfigurationId,
		NameArrayConfigurationId,
		GroupId,
		SortIndex)
VALUES	(
		'CSE_Favor_Suzerain',
		'LOC_CSE_FAVOR_SUZERAIN_NAME',
		'LOC_CSE_FAVOR_SUZERAIN_DESC',
		'bool',
		1,
		'Game',
		'CSE_FAVOR_OPTION',
		'GAMEMODES_ENABLED_NAMES',
		'GameModes',
		150);

INSERT OR REPLACE INTO ParameterDependencies
		(ParameterId,
		ConfigurationGroup,
		ConfigurationId,
		Operator,
		ConfigurationValue)
VALUES	(
		'CSE_Favor_Suzerain',
		'Game',
		'RULESET',
		'Equals',
		'RULESET_EXPANSION_2'
		),
		(
		'CSE_Favor_Suzerain',
		'Game',
		'WORLD_BUILDER',
		'NotEquals',
		1
		);

INSERT OR REPLACE INTO GameModeItems
		(GameModeType,
		Name,
		Description,
		Portrait,
		Background,
		Icon,
		UnitIcon,
		UnitDescription,
		UnitName,
		SortIndex)
VALUES	(
		'CSE_FAVOR_OPTION',
		'LOC_CSE_FAVOR_SUZERAIN_NAME',
		'LOC_CSE_FAVOR_SUZERAIN_DESC',
		'LEADER_HOJO_BACKGROUND',
		'LEADER_HOJO_BACKGROUND',
		'ICON_CITYSTATE_INDUSTRIAL',
		NULL,
		NULL,
		NULL,
		10
		);

-- CITY STATES HAVE WALLS

INSERT OR REPLACE INTO Parameters
		(ParameterId,
		Name,
		Description,
		Domain,
		DefaultValue,
		ConfigurationGroup,
		ConfigurationId,
		NameArrayConfigurationId,
		GroupId,
		SortIndex)
VALUES	(
		'CSE_CityState_Walls',
		'LOC_CSE_WALLS_NAME',
		'LOC_CSE_WALLS_DESC',
		'bool',
		1,
		'Game',
		'CSE_WALLS_OPTION',
		'GAMEMODES_ENABLED_NAMES',
		'GameModes',
		151);

INSERT OR REPLACE INTO ParameterDependencies
		(ParameterId,
		ConfigurationGroup,
		ConfigurationId,
		Operator,
		ConfigurationValue)
VALUES	(
		'CSE_CityState_Walls',
		'Game',
		'WORLD_BUILDER',
		'NotEquals',
		1
		);

INSERT OR REPLACE INTO GameModeItems
		(GameModeType,
		Name,
		Description,
		Portrait,
		Background,
		Icon,
		UnitIcon,
		UnitDescription,
		UnitName,
		SortIndex)
VALUES	(
		'CSE_WALLS_OPTION',
		'LOC_CSE_WALLS_NAME',
		'LOC_CSE_WALLS_DESC',
		'LEADER_HOJO_BACKGROUND',
		'LEADER_HOJO_BACKGROUND',
		'ICON_CITYSTATE_MILITARISTIC',
		NULL,
		NULL,
		NULL,
		10
		);

-- CONSULAR CITY STATES

INSERT OR REPLACE INTO Parameters
		(ParameterId,
		Name,
		Description,
		Domain,
		DefaultValue,
		ConfigurationGroup,
		ConfigurationId,
		NameArrayConfigurationId,
		GroupId,
		SortIndex)
VALUES	(
		'CSE_Favor_Consular',
		'LOC_CSE_FAVOR_CONSULAR_NAME',
		'LOC_CSE_FAVOR_CONSULAR_DESC',
		'bool',
		1,
		'Game',
		'CSE_CONSULAR_OPTION',
		'GAMEMODES_ENABLED_NAMES',
		'GameModes',
		152);

INSERT OR REPLACE INTO ParameterDependencies
		(ParameterId,
		ConfigurationGroup,
		ConfigurationId,
		Operator,
		ConfigurationValue)
VALUES	(
		'CSE_Favor_Consular',
		'Game',
		'RULESET',
		'Equals',
		'RULESET_EXPANSION_2'
		),
		(
		'CSE_Favor_Consular',
		'Game',
		'WORLD_BUILDER',
		'NotEquals',
		1
		);

INSERT OR REPLACE INTO GameModeItems
		(GameModeType,
		Name,
		Description,
		Portrait,
		Background,
		Icon,
		UnitIcon,
		UnitDescription,
		UnitName,
		SortIndex)
VALUES	(
		'CSE_CONSULAR_OPTION',
		'LOC_CSE_FAVOR_CONSULAR_NAME',
		'LOC_CSE_FAVOR_CONSULAR_DESC',
		'LEADER_HOJO_BACKGROUND',
		'LEADER_HOJO_BACKGROUND',
		'ICON_CITYSTATE_CSE_CONSULAR',
		NULL,
		NULL,
		NULL,
		10
		);


-- ETHIOPIA CITY STATE RULES

INSERT OR REPLACE INTO Parameters
		(ParameterId,
		Name,
		Description,
		Domain,
		DefaultValue,
		ConfigurationGroup,
		ConfigurationId,
		NameArrayConfigurationId,
		GroupId,
		SortIndex)
SELECT	'CSE_Ethiopia_Mode',
		'LOC_CSE_ETHIOPIA_MODE_NAME',
		'LOC_CSE_ETHIOPIA_MODE_DESC',
		'bool',
		1,
		'Game',
		'CSE_ETHIOPIA_OPTION',
		'GAMEMODES_ENABLED_NAMES',
		'GameModes',
		153
WHERE EXISTS (SELECT * FROM Parameters WHERE ParameterId = 'GameMode_SecretSocieties');

INSERT OR REPLACE INTO ParameterDependencies
		(ParameterId,
		ConfigurationGroup,
		ConfigurationId,
		Operator,
		ConfigurationValue)
SELECT	'CSE_Ethiopia_Mode',
		'Game',
		'WORLD_BUILDER',
		'NotEquals',
		1
WHERE EXISTS (SELECT * FROM Parameters WHERE ParameterId = 'GameMode_SecretSocieties');

INSERT OR REPLACE INTO GameModeItems
		(GameModeType,
		Name,
		Description,
		Portrait,
		Background,
		Icon,
		UnitIcon,
		UnitDescription,
		UnitName,
		SortIndex)
SELECT	'CSE_ETHIOPIA_OPTION',
		'LOC_CSE_ETHIOPIA_MODE_NAME',
		'LOC_CSE_ETHIOPIA_MODE_DESC',
		'LEADER_HOJO_BACKGROUND',
		'LEADER_HOJO_BACKGROUND',
		'ICON_CSE_Ethiopia_Mode',
		NULL,
		NULL,
		NULL,
		10
WHERE EXISTS (SELECT * FROM Parameters WHERE ParameterId = 'GameMode_SecretSocieties');


--- CITY STATE PICKER
UPDATE	CSE_Master
SET		ProposedType = FallbackType
WHERE	ProposedType IN (SELECT Setting 
FROM CSE_UserSettings WHERE Section = 'DISABLED' AND Value = 1);

-- Update Vanilla CS to new types (like Buenos Aires)
REPLACE INTO CityStates (CivilizationType,	CityStateCategory,	Name,	Icon,	Bonus)
SELECT		a.CivilizationType,	b.ProposedType,	a.Name,	a.Icon,	a.Bonus
FROM		CityStates a, CSE_Master b
WHERE		a.CivilizationType = 'CIVILIZATION_'||b.CityState;

INSERT INTO CityStates (CivilizationType,	CityStateCategory,	Name,	Icon,	Bonus)
SELECT		'CIVILIZATION_'||CityState,
			ProposedType,
			'LOC_CIVILIZATION_'||CityState||'_NAME',
			'ICON_CIVILIZATION_'||CityState,
			'LOC_'||CityState||'_TRAIT_DESCRIPTION'
FROM		CSE_Master
WHERE		New = 1 AND Requires = 'BASE';

INSERT INTO CityStates (Domain, CivilizationType,	CityStateCategory,	Name,	Icon,	Bonus)
SELECT		'Expansion1CityStates',
			'CIVILIZATION_'||CityState,
			ProposedType,
			'LOC_CIVILIZATION_'||CityState||'_NAME',
			'ICON_CIVILIZATION_'||CityState,
			'LOC_'||CityState||'_TRAIT_DESCRIPTION'
FROM		CSE_Master
WHERE		New = 1 AND Requires IN ('BASE', 'XP1');

INSERT INTO CityStates (Domain, CivilizationType,	CityStateCategory,	Name,	Icon,	Bonus)
SELECT		'Expansion2CityStates',
			'CIVILIZATION_'||CityState,
			ProposedType,
			'LOC_CIVILIZATION_'||CityState||'_NAME',
			'ICON_CIVILIZATION_'||CityState,
			'LOC_'||CityState||'_TRAIT_DESCRIPTION'
FROM		CSE_Master
WHERE		New = 1;


-- Things removed by New Frontier 1
DELETE FROM CityStates
WHERE CivilizationType = 'CIVILIZATION_CSE_SINGAPORE'
AND EXISTS (SELECT * FROM CityStates
WHERE CivilizationType = 'CIVILIZATION_SINGAPORE');

-- Things removed by New Frontier 4
DELETE FROM CityStates
WHERE CivilizationType = 'CIVILIZATION_CSE_JOHANNESBURG'
AND EXISTS (SELECT * FROM CityStates
WHERE CivilizationType = 'CIVILIZATION_JOHANNESBURG');

-- Disabled City-States
DELETE FROM CityStates
WHERE CivilizationType IN (SELECT 'CIVILIZATION_'||Setting
FROM CSE_UserSettings WHERE Section = 'DISABLED' AND Value = 1);

-- City-states removed by DLCs (just in case)
DELETE FROM CityStates
WHERE Domain = 'Expansion1CityStates'
AND CivilizationType IN (SELECT 'CIVILIZATION_'||CityState
FROM CSE_Master WHERE Removed = 'XP1');

DELETE FROM CityStates
WHERE Domain = 'Expansion2CityStates'
AND CivilizationType IN (SELECT 'CIVILIZATION_'||CityState
FROM CSE_Master WHERE Removed = 'XP2');