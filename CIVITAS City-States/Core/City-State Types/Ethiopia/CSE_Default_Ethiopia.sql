/*
	Default
	Authors: SeelingCat
*/

UPDATE	Modifiers
SET		SubjectRequirementSetId = 'PLAYER_HAS_SMALL_INFLUENCE'
WHERE	SubjectRequirementSetId = 'PLAYER_HAS_MEDIUM_INFLUENCE'
AND		ModifierId LIKE '%CSE%'
AND		ModifierId NOT LIKE '%CONSULAR%';

UPDATE	Modifiers
SET		SubjectRequirementSetId = 'PLAYER_HAS_MEDIUM_INFLUENCE'
WHERE	SubjectRequirementSetId = 'PLAYER_HAS_LARGE_INFLUENCE'
AND		ModifierId LIKE '%CSE%'
AND		ModifierId NOT LIKE '%CONSULAR%';

UPDATE	Modifiers
SET		SubjectRequirementSetId = 'PLAYER_HAS_LARGE_INFLUENCE'
WHERE	SubjectRequirementSetId = 'PLAYER_HAS_LARGEST_INFLUENCE'
AND		ModifierId LIKE '%CSE%'
AND		ModifierId NOT LIKE '%CONSULAR%';



-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CSE_CITY_HAS_CHANCERY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CSE_CITY_HAS_CONSULATE',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId				)
VALUES	('REQSET_CSE_CITY_HAS_CHANCERY',	'REQ_CSE_CITY_HAS_CHANCERY'	),
		('REQSET_CSE_CITY_HAS_CONSULATE',	'REQ_CSE_CITY_HAS_CONSULATE');

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,					Inverse	)
VALUES	('REQ_CSE_CITY_HAS_CHANCERY',		'REQUIREMENT_CITY_HAS_BUILDING',	0		),
		('REQ_CSE_CITY_HAS_CONSULATE',		'REQUIREMENT_CITY_HAS_BUILDING',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value				)
VALUES	('REQ_CSE_CITY_HAS_CHANCERY',		'BuildingType',	'BUILDING_CHANCERY'	),
		('REQ_CSE_CITY_HAS_CONSULATE',		'BuildingType',	'BUILDING_CONSULATE');
