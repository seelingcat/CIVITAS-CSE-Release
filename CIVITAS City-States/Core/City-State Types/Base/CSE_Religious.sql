/*
	Religious
	Authors: ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

DELETE FROM TraitModifiers
WHERE TraitType
IN (
	'MINOR_CIV_RELIGIOUS_TRAIT'
);

INSERT INTO TraitModifiers 
		(TraitType, 					ModifierId										)
VALUES	('MINOR_CIV_RELIGIOUS_TRAIT',	'MODIFIER_CSE_RELIGIOUS_SEND_TRADE_BONUS'		),
		('MINOR_CIV_RELIGIOUS_TRAIT',	'MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH'			),
		('MINOR_CIV_RELIGIOUS_TRAIT',	'MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH'			),
		('MINOR_CIV_RELIGIOUS_TRAIT',	'MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH'			);


INSERT INTO TraitModifiers 
		(TraitType, 					ModifierId										)
SELECT	'MINOR_CIV_RELIGIOUS_TRAIT',	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH'
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers 
		(ModifierId,											ModifierType,													SubjectRequirementSetId			)
VALUES	('MODIFIER_CSE_RELIGIOUS_SEND_TRADE_BONUS',				'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH_MOD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							);

INSERT INTO Modifiers 
		(ModifierId,												ModifierType,												SubjectRequirementSetId			)		
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_HAS_LARGEST_INFLUENCE'
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';

INSERT INTO Modifiers 
		(ModifierId,												ModifierType)	
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE'
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value												)
VALUES	('MODIFIER_CSE_RELIGIOUS_SEND_TRADE_BONUS',			'YieldType',		'YIELD_FAITH'										),
		('MODIFIER_CSE_RELIGIOUS_SEND_TRADE_BONUS',			'Amount',			1													),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH',			'ModifierId',		'MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH_MOD'			),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH_MOD',		'YieldType',		'YIELD_FAITH'										),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH_MOD',		'Amount',			2													),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH',				'ModifierId',		'MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD'			),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',			'BuildingType',		'BUILDING_SHRINE'									),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',			'YieldType',		'YIELD_FAITH'										),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',			'Amount',			2													),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',			'CityStatesOnly',	1													),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH',				'ModifierId',		'MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD'			),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',			'BuildingType',		'BUILDING_TEMPLE'									),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',			'YieldType',		'YIELD_FAITH'										),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',			'Amount',			2													),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',			'CityStatesOnly',	1													);

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH',		'ModifierId',		'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD'
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';		

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'BuildingType',		BuildingType
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';	

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'YieldType',		'YIELD_FAITH'
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';	

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'Amount',			2
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';	

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH_MOD',	'CityStatesOnly',	1
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings 
		(ModifierId, 									Context, 	Text												)
VALUES	('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH', 		'Preview', 	'LOC_CSE_RELIGIOUS_TRAIT_SMALL_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH', 		'Preview', 	'LOC_CSE_RELIGIOUS_TRAIT_MEDIUM_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH',	 		'Preview', 	'LOC_CSE_RELIGIOUS_TRAIT_LARGE_INFLUENCE_BONUS'		);

INSERT INTO ModifierStrings 
		(ModifierId, 											Context, 	Text										)
SELECT	'MODIFIER_CSE_RELIGIOUS_' || BuildingType || '_FAITH',	'Preview', 	'LOC_CSE_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_BONUS'
FROM	Buildings
WHERE	EnabledByReligion=1 AND PrereqDistrict='DISTRICT_HOLY_SITE';

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('PLAYER_HAS_LARGEST_INFLUENCE_AND_PAPAL_PRIMACY',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId							)
VALUES	('PLAYER_HAS_LARGEST_INFLUENCE_AND_PAPAL_PRIMACY',	'REQUIRES_PLAYER_HAS_LARGEST_INFLUENCE'	),
		('PLAYER_HAS_LARGEST_INFLUENCE_AND_PAPAL_PRIMACY',	'REQUIRES_PLAYER_AT_PEACE'				),
		('PLAYER_HAS_LARGEST_INFLUENCE_AND_PAPAL_PRIMACY',	'REQUIRES_PLAYER_FOUNDED_OUR_RELIGION'	),
		('PLAYER_HAS_LARGEST_INFLUENCE_AND_PAPAL_PRIMACY',	'REQUIRES_PLAYER_HAS_PAPAL_PRIMACY'		);