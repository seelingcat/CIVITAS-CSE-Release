/*
	Sale
	~ Naval Raider units gain an extra attack.

	Authors: SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,								Kind			)
VALUES	('MODTYPE_CSE_SALE_EXTRA_ATTACK',	'KIND_MODIFIER'	),
		('CSE_SALE_ATTACK_ABILITY',			'KIND_ABILITY'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------

INSERT INTO TypeTags
		(Type,								Tag									)
VALUES	('CSE_SALE_ATTACK_ABILITY',			'CLASS_NAVAL_RAIDER'				);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId							)
VALUES	('MINOR_CIV_CSE_SALE_TRAIT',	'CSE_SALE_SUZERAIN_EXTRA_ATTACK'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------
/**
INSERT INTO DynamicModifiers
		(ModifierType,						CollectionType,				EffectType							)
VALUES	('MODTYPE_CSE_SALE_EXTRA_ATTACK',	'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_NUM_ATTACKS'	);
**/
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,						ModifierType,							SubjectRequirementSetId				)
VALUES	('CSE_SALE_SUZERAIN_EXTRA_ATTACK',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'PLAYER_IS_SUZERAIN'				),
		('CSE_SALE_EXTRA_ATTACK',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',	NULL								);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,						Name,			Value								)
VALUES	('CSE_SALE_SUZERAIN_EXTRA_ATTACK',	'ModifierId',	'CSE_SALE_EXTRA_ATTACK'				),
		('CSE_SALE_EXTRA_ATTACK',			'AbilityType',	'CSE_SALE_ATTACK_ABILITY'			);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,						Inactive,	Description						)
VALUES	('CSE_SALE_ATTACK_ABILITY',				'LOC_CSE_SALE_SUZ_NAME',	1,			'LOC_CSE_SALE_SUZ_DESC'		);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('CSE_SALE_ATTACK_ABILITY',				'CSE_SALE_ATTACK_ABILITY_MOD'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,								SubjectRequirementSetId	)
VALUES	('CSE_SALE_ATTACK_ABILITY_MOD',			'MODIFIER_UNIT_ADJUST_NUM_ATTACKS',			NULL	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value							)
VALUES	('CSE_SALE_ATTACK_ABILITY_MOD',			'Amount',		1								);