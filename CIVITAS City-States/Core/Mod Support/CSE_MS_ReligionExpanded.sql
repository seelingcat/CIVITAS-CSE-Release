/*
	Mod Support | Religion Expanded
	Authors: ChimpanG, SeelingCat
*/

-----------------------------------------------
-- Triggers
-----------------------------------------------

CREATE TRIGGER IF NOT EXISTS t_CSE_ReligionExpanded
AFTER INSERT ON Buildings WHEN NEW.PrereqDistrict = 'DISTRICT_HOLY_SITE' AND NEW.TraitType IS NULL
BEGIN

	INSERT INTO TraitModifiers
			(TraitType,						ModifierId															)
	VALUES	('MINOR_CIV_RELIGIOUS_TRAIT',	'MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH'	);

	INSERT INTO Modifiers
			(ModifierId,															ModifierType,											SubjectRequirementSetId			)
	VALUES	('MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'PLAYER_HAS_LARGEST_INFLUENCE'	),
			('MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	NULL							);

	INSERT INTO ModifierArguments
			(ModifierId,															Name,				Value																	)
	VALUES	('MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH',		'ModifierId',		'MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH_MOD'	),
			('MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH_MOD',	'BuildingType',		NEW.BuildingType														),
			('MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH_MOD',	'YieldType',		'YIELD_FAITH'															),
			('MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH_MOD',	'CityStatesOnly',	1																		);

	INSERT INTO ModifierArguments
			(ModifierId,															Name,				Value																	)
	SELECT	'MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH_MOD',	'Amount',			3																		
	WHERE EXISTS ( SELECT * FROM CivilizationLeaders WHERE LeaderType = 'LEADER_MENELIK');

	INSERT INTO ModifierArguments
			(ModifierId,															Name,				Value																	)
	SELECT	'MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH_MOD',	'Amount',			2																		
	WHERE NOT EXISTS ( SELECT * FROM CivilizationLeaders WHERE LeaderType = 'LEADER_MENELIK');

	INSERT INTO ModifierStrings
			(ModifierId,														Context,	Text												)
	VALUES	('MODIFIER_CSE_RELIGIOUS_'||SUBSTR(NEW.BuildingType,14)||'_FAITH',	'Preview',	'LOC_CSE_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_BONUS'	);

END;