/*
	Sidon
	~ +1 Movement to Civilian Units

	Authors: ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind								)
VALUES	('CSE_SIDON_MOVEMENT_ABILITY',	'KIND_ABILITY'						);

-----------------------------------------------
-- TypeTags
-----------------------------------------------

INSERT INTO TypeTags
		(Type,							Tag									)
VALUES	('CSE_SIDON_MOVEMENT_ABILITY',	'CLASS_LANDCIVILIAN'				);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('MINOR_CIV_CSE_SIDON_TRAIT',	'CSE_SIDON_SUZERAIN_GRIEVANCE_DECAY'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,								SubjectRequirementSetId	)
VALUES	('CSE_SIDON_SUZERAIN_GRIEVANCE_DECAY',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',		'PLAYER_IS_SUZERAIN'	),
		('CSE_SIDON_GRIEVANCE_DECAY',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',		NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value							)
VALUES	('CSE_SIDON_SUZERAIN_GRIEVANCE_DECAY',	'ModifierId',	'CSE_SIDON_GRIEVANCE_DECAY'		),
		('CSE_SIDON_GRIEVANCE_DECAY',			'AbilityType',	'CSE_SIDON_MOVEMENT_ABILITY'	);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,						Inactive,	Description						)
VALUES	('CSE_SIDON_MOVEMENT_ABILITY',			'LOC_CSE_SIDON_SUZ_NAME',	1,			'LOC_CSE_SIDON_SUZ_DESC'		);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('CSE_SIDON_MOVEMENT_ABILITY',			'CSE_SIDON_MOVEMENT_ABILITY_MOD'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,								SubjectRequirementSetId	)
VALUES	('CSE_SIDON_MOVEMENT_ABILITY_MOD',		'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',		NULL	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value							)
VALUES	('CSE_SIDON_MOVEMENT_ABILITY_MOD',		'Amount',		1								);