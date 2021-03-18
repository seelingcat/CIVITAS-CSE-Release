/*
	Anuradhapura
	~ Your builders may construct Dagoba improvements.

	Authors: thecrazyscotsman
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,						Kind				)
VALUES	('IMPROVEMENT_CSE_DAGOBA',	'KIND_IMPROVEMENT'	);

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements	(
		ImprovementType,
		Name,		
		Description,
		TraitType,
		Icon,
		Buildable,
		PlunderType,
		PlunderAmount,
		SameAdjacentValid
		)
VALUES	(
		'IMPROVEMENT_CSE_DAGOBA', -- ImprovementType
		'LOC_IMPROVEMENT_CSE_DAGOBA_NAME', -- Name		
		'LOC_IMPROVEMENT_CSE_DAGOBA_DESCRIPTION', -- Description
		'MINOR_CIV_CSE_ANURADHAPURA_TRAIT', -- TraitType
		'ICON_IMPROVEMENT_CSE_DAGOBA', -- Icon
		1, -- Buildable
		'PLUNDER_FAITH', -- PlunderType
		25, -- PlunderAmount
		0 -- SameAdjacentValid
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,			UnitType		)
VALUES	('IMPROVEMENT_CSE_DAGOBA',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
		
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,			TerrainType				)
VALUES	('IMPROVEMENT_CSE_DAGOBA',	'TERRAIN_GRASS'			),
		('IMPROVEMENT_CSE_DAGOBA',	'TERRAIN_GRASS_HILLS'	),
		('IMPROVEMENT_CSE_DAGOBA',	'TERRAIN_PLAINS'		),
		('IMPROVEMENT_CSE_DAGOBA',	'TERRAIN_PLAINS_HILLS'	);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CSE_DAGOBA',	'YIELD_FAITH',		1			),
		('IMPROVEMENT_CSE_DAGOBA',	'YIELD_CULTURE',	1			);

-----------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------

INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,			YieldType,			BonusYieldChange,	PrereqTech,					PrereqCivic				)
VALUES	(100,	'IMPROVEMENT_CSE_DAGOBA',	'YIELD_CULTURE',	1,					'TECH_EDUCATION',			NULL					),
		(101,	'IMPROVEMENT_CSE_DAGOBA',	'YIELD_CULTURE',	1,					'TECH_FLIGHT',				NULL					),
		(102,	'IMPROVEMENT_CSE_DAGOBA',	'YIELD_FAITH',		1,					NULL,						'CIVIC_THEOLOGY'		),
		(103,	'IMPROVEMENT_CSE_DAGOBA',	'YIELD_FAITH',		1,					NULL,						'CIVIC_REFORMED_CHURCH'	);

-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------
		
INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId				)
VALUES	('IMPROVEMENT_CSE_DAGOBA',	'ADJ_CSE_DAGOBA_HOLY_SITE'	),
		('IMPROVEMENT_CSE_DAGOBA',	'ADJ_CSE_DAGOBA_THEATER'	);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------
		
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentDistrict,		PrereqCivic	)
VALUES	('ADJ_CSE_DAGOBA_HOLY_SITE',	'Placeholder',	'YIELD_FAITH',		1,				1,				'DISTRICT_HOLY_SITE',	NULL		),
		('ADJ_CSE_DAGOBA_THEATER',		'Placeholder',	'YIELD_CULTURE',	1,				1,				'DISTRICT_THEATER',		NULL		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,								ModifierId							)
VALUES	('MINOR_CIV_CSE_ANURADHAPURA_TRAIT',	'CSE_ANURADHAPURA_SUZERAIN_DAGOBA'	),
		('MINOR_CIV_CSE_ANURADHAPURA_TRAIT',	'CSE_ANURADHAPURA_FREE_RELIC'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,								SubjectRequirementSetId,	RunOnce,	Permanent	)
VALUES	('CSE_ANURADHAPURA_SUZERAIN_DAGOBA',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',		'PLAYER_IS_SUZERAIN',		0,			0	),
		('CSE_ANURADHAPURA_DAGOBA',				'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT',	NULL,						0,			0	),
		('CSE_ANURADHAPURA_FREE_RELIC',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',		'PLAYER_IS_SUZERAIN',		0,			1	),
		('CSE_ANURADHAPURA_FREE_RELIC_MOD',		'MODIFIER_PLAYER_GRANT_RELIC',				'REQ_CSE_PLAYER_DAGOBA',	0,			1	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,				Value						)
VALUES	('CSE_ANURADHAPURA_SUZERAIN_DAGOBA',	'ModifierId',		'CSE_ANURADHAPURA_DAGOBA'	),
		('CSE_ANURADHAPURA_DAGOBA',				'ImprovementType',	'IMPROVEMENT_CSE_DAGOBA'	),
		('CSE_ANURADHAPURA_FREE_RELIC',			'ModifierId',		'CSE_ANURADHAPURA_FREE_RELIC_MOD'	),
		('CSE_ANURADHAPURA_FREE_RELIC_MOD',		'Amount',			1	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQ_CSE_PLAYER_DAGOBA',			'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQ_CSE_PLAYER_DAGOBA',			'REQ_CSE_PLAYER_HAS_DAGOBA'		);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType								)
VALUES	('REQ_CSE_PLAYER_HAS_DAGOBA',	'REQUIREMENT_PLAYER_HAS_IMPROVEMENT'		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,					Value							)
VALUES	('REQ_CSE_PLAYER_HAS_DAGOBA',	'ImprovementType',		'IMPROVEMENT_CSE_DAGOBA'		);