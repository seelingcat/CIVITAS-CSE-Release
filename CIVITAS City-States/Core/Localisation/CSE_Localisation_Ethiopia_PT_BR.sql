/*
	Localisation
	Authors: SeelingCat
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Scientific
-----------------------------------------------

	("pt_BR",	"LOC_CSE_SCIENTIFIC_TRAIT_SMALL_INFLUENCE_BONUS",		"+1 de [ICON_SCIENCE] Ciência na [ICON_CAPITAL] Capital e em cada Biblioteca."		),
	("pt_BR",	"LOC_CSE_SCIENTIFIC_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+2 de [ICON_SCIENCE] Ciência em cada edificação de Universidade e Consulado."					),
	("pt_BR",	"LOC_CSE_SCIENTIFIC_TRAIT_LARGE_INFLUENCE_BONUS",		"+3 de [ICON_SCIENCE] Ciência em cada edificação de Laboratório de Pesquisa e Chancelaria."				),
	("pt_BR",	"LOC_CSE_SCIENTIFIC_TRAIT_LARGEST_INFLUENCE_BONUS",		"+1 de [ICON_SCIENCE] Ciência em cada edificação do Campus e da Área Diplomática."				),

-----------------------------------------------
-- Cultural
-----------------------------------------------
	
	("pt_BR",	"LOC_CSE_CULTURAL_TRAIT_SMALL_INFLUENCE_BONUS",			"+1 de [ICON_CULTURE] Cultura na [ICON_CAPITAL] Capital e em cada Anfiteatro."			),
	("pt_BR",	"LOC_CSE_CULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+2 de [ICON_CULTURE] Cultura em cada edificação de Museu de Arte, Museu Arqueológico e Consulado."					),
	("pt_BR",	"LOC_CSE_CULTURAL_TRAIT_LARGE_INFLUENCE_BONUS",			"+3 de [ICON_CULTURE] Cultura em cada edificação de Centro de Transmissão e Chancelaria."	),
	("pt_BR",	"LOC_CSE_CULTURAL_TRAIT_LARGEST_INFLUENCE_BONUS",		"+1 de [ICON_CULTURE] Cultura em cada edificação do Teatro e da Área Diplomática."				),

-----------------------------------------------
-- Trade
-----------------------------------------------
	
	("pt_BR",	"LOC_CSE_TRADE_TRAIT_SMALL_INFLUENCE_BONUS",			"+2 de [ICON_GOLD] Ouro na [ICON_CAPITAL] Capital e em cada edificação de Mercado ou Farol."		),
	("pt_BR",	"LOC_CSE_TRADE_TRAIT_SMALL_INFLUENCE_BONUS_ALT",		"+2 de [ICON_GOLD] Ouro na [ICON_CAPITAL] Capital e em cada edificação de Mercado."						),
	("pt_BR",	"LOC_CSE_TRADE_TRAIT_MEDIUM_INFLUENCE_BONUS",			"+4 de [ICON_GOLD] Ouro em cada edificação de Banco, Estaleiro e Consulado."		),
	("pt_BR",	"LOC_CSE_TRADE_TRAIT_MEDIUM_INFLUENCE_BONUS_ALT",		"+4 de [ICON_GOLD] Ouro em cada edificação de Banco e Consulado."						),
	("pt_BR",	"LOC_CSE_TRADE_TRAIT_LARGE_INFLUENCE_BONUS",			"+6 de [ICON_GOLD] Ouro em cada edificação de Bolsa de Valores, Porto Marítmo e Chancelaria."			),
	("pt_BR",	"LOC_CSE_TRADE_TRAIT_LARGE_INFLUENCE_BONUS_ALT",		"+6 de [ICON_GOLD] Ouro em cada edificação de Bolsa de Valores e Chancelaria."						),
	("pt_BR",	"LOC_CSE_TRADE_TRAIT_LARGEST_INFLUENCE_BONUS",			"+2 de [ICON_GOLD] Ouro em cada edificação do Centro Comercial, Porto e da Área Diplomática."	),
	("pt_BR",	"LOC_CSE_TRADE_TRAIT_LARGEST_INFLUENCE_BONUS_ALT",		"+2 de [ICON_GOLD] Ouro em cada edificação do Centro Comercial e da Área Diplomática."				),

	("pt_BR",	"LOC_CSE_TRADE_TRAIT_DESCRIPTION_ALT",					"{LOC_MINOR_CIV_SMALL_INFLUENCE_ENVOYS} {LOC_CSE_TRADE_TRAIT_SMALL_INFLUENCE_BONUS_ALT}[NEWLINE]{LOC_MINOR_CIV_MEDIUM_INFLUENCE_ENVOYS} {LOC_CSE_TRADE_TRAIT_MEDIUM_INFLUENCE_BONUS_ALT}[NEWLINE]{LOC_MINOR_CIV_LARGE_INFLUENCE_ENVOYS} {LOC_CSE_TRADE_TRAIT_LARGE_INFLUENCE_BONUS_ALT}[NEWLINE]{LOC_MINOR_CIV_LARGEST_INFLUENCE_ENVOYS} {LOC_CSE_TRADE_TRAIT_LARGEST_INFLUENCE_BONUS_ALT}"	),

-----------------------------------------------
-- Religious
-----------------------------------------------

	("pt_BR",	"LOC_CSE_RELIGIOUS_TRAIT_SMALL_INFLUENCE_BONUS",		"+1 de [ICON_FAITH] Fé na [ICON_CAPITAL] Capital e em cada edificação de Santuário."		),
	("pt_BR",	"LOC_CSE_RELIGIOUS_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+2 de [ICON_FAITH] Fé em cada edificação de Templo e Consulado."					),
	("pt_BR",	"LOC_CSE_RELIGIOUS_TRAIT_LARGE_INFLUENCE_BONUS",		"+3 de [ICON_FAITH] Fé em cada edificação de adoração e Chancelaria."					),
	("pt_BR",	"LOC_CSE_RELIGIOUS_TRAIT_LARGEST_INFLUENCE_BONUS",		"+1 de [ICON_FAITH] Fé em cada edificação do Local Sagrado e da Área Diplomática."			),

-----------------------------------------------
-- Militaristic
-----------------------------------------------
	
	("pt_BR",	"LOC_CSE_MILITARISTIC_TRAIT_SMALL_INFLUENCE_BONUS",		"+1 de [ICON_PRODUCTION] Produção na [ICON_CAPITAL] Capital e em cada cidade com uma edificação de Caserna ou Estábulo quando produzir unidades."				),
	("pt_BR",	"LOC_CSE_MILITARISTIC_TRAIT_MEDIUM_INFLUENCE_BONUS",	"+2 de [ICON_PRODUCTION] Produção em cada cidade com uma edificação de Arsenal ou Consulado quando produzir unidades. Receba +4 de [ICON_PRODUCTION] Produção se possuir ambas as edificações."	),
	("pt_BR",	"LOC_CSE_MILITARISTIC_TRAIT_LARGE_INFLUENCE_BONUS",		"+3 de [ICON_PRODUCTION] Produção em cada cidade com uma edificação de Academia Militar ou Chancelaria quando produzir unidades. Receba +6 de [ICON_PRODUCTION] Produção se possuir ambas as edificações."				),
	("pt_BR",	"LOC_CSE_MILITARISTIC_TRAIT_LARGEST_INFLUENCE_BONUS",	"+1 de [ICON_PRODUCTION] Produção para cada edificação do Acampamento e da Área Diplomática presentes na cidade quando produzir unidades."		),

-----------------------------------------------
-- Industrial
-----------------------------------------------
	
	("pt_BR",	"LOC_CSE_INDUSTRIAL_TRAIT_SMALL_INFLUENCE_BONUS",		"+1 de [ICON_PRODUCTION] Produção na [ICON_CAPITAL] Capital e em cada cidade com uma edificação de Oficina quando produzir maravilhas, edificações e distritos."	),
	("pt_BR",	"LOC_CSE_INDUSTRIAL_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+2 de [ICON_PRODUCTION] Produção em cada cidade com uma edificação de Fábrica ou Consulado quando produzir maravilhas, edificações e distritos. Receba +4 de [ICON_PRODUCTION] Produção se possuir ambas as edificações."	),
	("pt_BR",	"LOC_CSE_INDUSTRIAL_TRAIT_LARGE_INFLUENCE_BONUS",		"+3 de [ICON_PRODUCTION] Produção em cada cidade com uma edificação de Usina de Energia ou Chancelaria quando produzir maravilhas, edificações e distritos. Receba +6 de [ICON_PRODUCTION] Produção se possuir ambas as edificações."		),
	("pt_BR",	"LOC_CSE_INDUSTRIAL_TRAIT_LARGEST_INFLUENCE_BONUS",		"+1 de [ICON_PRODUCTION] Produção para cada edificação da Zona Industrial e da Área Diplomática presentes na cidade quando produzir maravilhas, edificações e distritos."	),

-----------------------------------------------
-- Agrarian
-----------------------------------------------

	("pt_BR",	"LOC_CSE_AGRICULTURAL_TRAIT_SMALL_INFLUENCE_BONUS",		"+1 de [ICON_FOOD] Alimento na [ICON_CAPITAL] Capital e em cada edificação de Celeiro."	),
	("pt_BR",	"LOC_CSE_AGRICULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS",	"+2 de [ICON_FOOD] Alimento em cada edificação de Esgoto e Consulado."					),
	("pt_BR",	"LOC_CSE_AGRICULTURAL_TRAIT_LARGE_INFLUENCE_BONUS",		"+3 de [ICON_FOOD] Alimento em cada Aqueduto e Chancelaria."					),
	("pt_BR",	"LOC_CSE_AGRICULTURAL_TRAIT_LARGEST_INFLUENCE_BONUS",	"+1 de [ICON_FOOD] Alimento em cada Aqueduto e edificações de Celeiro, Esgoto e da Área Diplomática."				),

-----------------------------------------------
-- Entertainment
-----------------------------------------------
	
	("pt_BR",	"LOC_CSE_ENTERTAINMENT_TRAIT_SMALL_INFLUENCE_BONUS",	"+1 de [ICON_AMENITIES] Serviços de entretenimento na [ICON_CAPITAL] Capital e em cada edificação de Arena."	),
	("pt_BR",	"LOC_CSE_ENTERTAINMENT_TRAIT_MEDIUM_INFLUENCE_BONUS",	"+1 de [ICON_AMENITIES] Serviços de entretenimento em cada edificação de Zoológico e Consulado."		),
	("pt_BR",	"LOC_CSE_ENTERTAINMENT_TRAIT_LARGE_INFLUENCE_BONUS",	"+1 de [ICON_AMENITIES] Serviços de entretenimento em cada edificação de Estádio e Chancelaria."	),
	("pt_BR",	"LOC_CSE_ENTERTAINMENT_TRAIT_LARGEST_INFLUENCE_BONUS",	"+1 de [ICON_AMENITIES] Serviços de entretenimento em cada edificação do Complexo de Entretenimento e da Área Diplomática."	),

-----------------------------------------------
-- Maritime
-----------------------------------------------

	("pt_BR",	"LOC_CSE_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS",			"+1 de [ICON_FOOD] Alimento na [ICON_CAPITAL] Capital e em cada edificação de Farol."	),
	("pt_BR",	"LOC_CSE_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+1 de [ICON_FOOD] Alimento e +1 de [ICON_PRODUCTION] Produção em cada edificação de Estaleiro e Consulado."		),
	("pt_BR",	"LOC_CSE_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS",			"+1 de [ICON_FOOD] Alimento, +1 de [ICON_PRODUCTION] Produção, e +2 [ICON_GOLD] em cada edificação de Porto Marítmo e Chancelaria."	),
	("pt_BR",	"LOC_CSE_MARITIME_TRAIT_LARGEST_INFLUENCE_BONUS",		"+1 de [ICON_FOOD] Alimento em cada edificação do Porto e da Área Diplomática."	);