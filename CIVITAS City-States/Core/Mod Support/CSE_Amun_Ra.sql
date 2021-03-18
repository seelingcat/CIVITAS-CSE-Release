/*
	Religious
	Authors: ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers 
		(TraitType, 					ModifierId										)
SELECT	'MINOR_CIV_RELIGIOUS_TRAIT',	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH'
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers 
		(ModifierId,												ModifierType,												SubjectRequirementSetId			)		
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_HAS_LARGEST_INFLUENCE'
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';

INSERT INTO Modifiers 
		(ModifierId,												ModifierType)	
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE'
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH',		'ModifierId',		'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD'
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'BuildingType',		BuildingType
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'YieldType',		'YIELD_FAITH'
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'Amount',			2
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'CityStatesOnly',	1
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings 
		(ModifierId, 											Context, 	Text										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH',	'Preview', 	'LOC_CSE_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_BONUS'
FROM	Buildings
WHERE	BuildingType='BUILDING_TEMPLE_AMUN';