/*
 FUN ZONE OF ADMIN LISTINGS
 Try to keep this in sync with __DEFINES/traits.dm
 quirks have it's own panel so we don't need them here.
*/
GLOBAL_LIST_INIT(traits_by_type, list(
	/mob = list(
		"TRAIT_BLIND" = TRAIT_BLIND,
		"TRAIT_MUTE" = TRAIT_MUTE,
		"TRAIT_EMOTEMUTE " = TRAIT_EMOTEMUTE,
		"TRAIT_DEAF" = TRAIT_DEAF,
		"TRAIT_NEARSIGHT" = TRAIT_NEARSIGHT,
		"TRAIT_FAT" = TRAIT_FAT,
		"TRAIT_HUSK" = TRAIT_HUSK,
		"TRAIT_BADDNA" = TRAIT_BADDNA,
		"TRAIT_CLUMSY" = TRAIT_CLUMSY,
		"TRAIT_DUMB" = TRAIT_DUMB,
		"TRAIT_MONKEYLIKE" = TRAIT_MONKEYLIKE,
		"TRAIT_PACIFISM" = TRAIT_PACIFISM,
		"TRAIT_IGNORESLOWDOWN" = TRAIT_IGNORESLOWDOWN,
		"TRAIT_IGNOREDAMAGESLOWDOWN" = TRAIT_IGNOREDAMAGESLOWDOWN,
		"TRAIT_DEATHCOMA" = TRAIT_DEATHCOMA,
		"TRAIT_FAKEDEATH" = TRAIT_FAKEDEATH,
		"TRAIT_DISFIGURED" = TRAIT_DISFIGURED,
		"TRAIT_XENO_HOST" = TRAIT_XENO_HOST,
		"TRAIT_STUNIMMUNE" = TRAIT_STUNIMMUNE,
		"TRAIT_SLEEPIMMUNE" = TRAIT_SLEEPIMMUNE,
		"TRAIT_PUSHIMMUNE" = TRAIT_PUSHIMMUNE,
		"TRAIT_SHOCKIMMUNE" = TRAIT_SHOCKIMMUNE,
		"TRAIT_STABLEHEART" = TRAIT_STABLEHEART,
		"TRAIT_STABLELIVER" = TRAIT_STABLELIVER,
		"TRAIT_RESISTHEAT" = TRAIT_RESISTHEAT,
		"TRAIT_RESISTHEATHANDS" = TRAIT_RESISTHEATHANDS,
		"TRAIT_RESISTCOLD" = TRAIT_RESISTCOLD,
		"TRAIT_RESISTHIGHPRESSURE" = TRAIT_RESISTHIGHPRESSURE,
		"TRAIT_RESISTLOWPRESSURE" = TRAIT_RESISTLOWPRESSURE,
		"TRAIT_RADIMMUNE" = TRAIT_RADIMMUNE,
		"TRAIT_VIRUSIMMUNE" = TRAIT_VIRUSIMMUNE,
		"TRAIT_PIERCEIMMUNE" = TRAIT_PIERCEIMMUNE,
		"TRAIT_NODISMEMBER" = TRAIT_NODISMEMBER,
		"TRAIT_NOFIRE" = TRAIT_NOFIRE,
		"TRAIT_NOGUNS" = TRAIT_NOGUNS,
		"TRAIT_NOHUNGER" = TRAIT_NOHUNGER,
		"TRAIT_NOMETABOLISM" = TRAIT_NOMETABOLISM,
		"TRAIT_TOXIMMUNE" = TRAIT_TOXIMMUNE,
		"TRAIT_EASYDISMEMBER" = TRAIT_EASYDISMEMBER,
		"TRAIT_LIMBATTACHMENT" = TRAIT_LIMBATTACHMENT,
		"TRAIT_NOLIMBDISABLE" = TRAIT_NOLIMBDISABLE,
		"TRAIT_EASYLIMBDISABLE" = TRAIT_EASYLIMBDISABLE,
		"TRAIT_TOXINLOVER" = TRAIT_TOXINLOVER,
		"TRAIT_NOBREATH" = TRAIT_NOBREATH,
		"TRAIT_HOLDBREATH" = TRAIT_HOLDBREATH,
		"TRAIT_ANTIMAGIC" = TRAIT_ANTIMAGIC,
		"TRAIT_HOLY" = TRAIT_HOLY,
		"TRAIT_DEPRESSION" = TRAIT_DEPRESSION,
		"TRAIT_JOLLY" = TRAIT_JOLLY,
		"TRAIT_NOCRITDAMAGE" = TRAIT_NOCRITDAMAGE,
		"TRAIT_NOSLIPWATER" = TRAIT_NOSLIPWATER,
		"TRAIT_NOSLIPALL" = TRAIT_NOSLIPALL,
		"TRAIT_NODEATH" = TRAIT_NODEATH,
		"TRAIT_NOHARDCRIT" = TRAIT_NOHARDCRIT,
		"TRAIT_NOSOFTCRIT" = TRAIT_NOSOFTCRIT,
		"TRAIT_MINDSHIELD" = TRAIT_MINDSHIELD,
		"TRAIT_DISSECTED" = TRAIT_DISSECTED,
		"TRAIT_SIXTHSENSE" = TRAIT_SIXTHSENSE,
		"TRAIT_FEARLESS" = TRAIT_FEARLESS,
		"TRAIT_PARALYSIS_L_ARM" = TRAIT_PARALYSIS_L_ARM,
		"TRAIT_PARALYSIS_R_ARM" = TRAIT_PARALYSIS_R_ARM,
		"TRAIT_PARALYSIS_L_LEG" = TRAIT_PARALYSIS_L_LEG,
		"TRAIT_PARALYSIS_R_LEG" = TRAIT_PARALYSIS_R_LEG,
		"TRAIT_CANNOT_OPEN_PRESENTS" = TRAIT_CANNOT_OPEN_PRESENTS,
		"TRAIT_PRESENT_VISION" = TRAIT_PRESENT_VISION,
		"TRAIT_DISK_VERIFIER" = TRAIT_DISK_VERIFIER,
		"TRAIT_NOMOBSWAP" = TRAIT_NOMOBSWAP,
		"TRAIT_XRAY_VISION" = TRAIT_XRAY_VISION,
		"TRAIT_THERMAL_VISION" = TRAIT_THERMAL_VISION,
		"TRAIT_ABDUCTOR_TRAINING" = TRAIT_ABDUCTOR_TRAINING,
		"TRAIT_ABDUCTOR_SCIENTIST_TRAINING" = TRAIT_ABDUCTOR_SCIENTIST_TRAINING,
		"TRAIT_SURGEON" = TRAIT_SURGEON,
		"TRAIT_STRONG_GRABBER" = TRAIT_STRONG_GRABBER,
		"TRAIT_MAGIC_CHOKE" = TRAIT_MAGIC_CHOKE,
		"TRAIT_SOOTHED_THROAT" = TRAIT_SOOTHED_THROAT,
		"TRAIT_LAW_ENFORCEMENT_METABOLISM" = TRAIT_LAW_ENFORCEMENT_METABOLISM,
		"TRAIT_ALWAYS_CLEAN" = TRAIT_ALWAYS_CLEAN,
		"TRAIT_BOOZE_SLIDER" = TRAIT_BOOZE_SLIDER,
		"TRAIT_UNINTELLIGIBLE_SPEECH" = TRAIT_UNINTELLIGIBLE_SPEECH,
		"TRAIT_UNSTABLE" = TRAIT_UNSTABLE,
		"TRAIT_OIL_FRIED" = TRAIT_OIL_FRIED,
		"TRAIT_XENO_IMMUNE" = TRAIT_XENO_IMMUNE,
		"TRAIT_DRUQK" = TRAIT_DRUQK,
		//hearthstone edits
		"TRAIT_SEEPRICES" = TRAIT_SEEPRICES,
		"TRAIT_WEBWALK" = TRAIT_WEBWALK,
		"TRAIT_NOSTINK" = TRAIT_NOSTINK,
		"TRAIT_ZJUMP" = TRAIT_ZJUMP,
		"TRAIT_LEAPER" = TRAIT_LEAPER,
		"TRAIT_NOSEGRAB" = TRAIT_NOSEGRAB,
		"TRAIT_NUTCRACKER" = TRAIT_NUTCRACKER,
		"TRAIT_SEEPRICES" = TRAIT_SEEPRICES,
		"TRAIT_SEEPRICES_SHITTY" = TRAIT_SEEPRICES_SHITTY,
		"TRAIT_STRONGBITE" = TRAIT_STRONGBITE,
		"TRAIT_NOBLE" = TRAIT_NOBLE,
		"TRAIT_EMPATH" = TRAIT_EMPATH,
		"TRAIT_BREADY" = TRAIT_BREADY,
		"TRAIT_MEDIUMARMOR" = TRAIT_MEDIUMARMOR,
		"TRAIT_HEAVYARMOR" = TRAIT_HEAVYARMOR,
		"TRAIT_DODGEEXPERT" = TRAIT_DODGEEXPERT,
		"TRAIT_DECEIVING_MEEKNESS" = TRAIT_DECEIVING_MEEKNESS,
		"TRAIT_CRITICAL_RESISTANCE" = TRAIT_CRITICAL_RESISTANCE,
		"TRAIT_CRITICAL_WEAKNESS" = TRAIT_CRITICAL_WEAKNESS,
		"TRAIT_MANIAC_AWOKEN" = TRAIT_MANIAC_AWOKEN,
		"TRAIT_NOROGSTAM" = TRAIT_NOROGSTAM,
		"TRAIT_NUDIST" = TRAIT_NUDIST,
		"TRAIT_CYCLOPS_LEFT" = TRAIT_CYCLOPS_LEFT,
		"TRAIT_CYCLOPS_RIGHT" = TRAIT_CYCLOPS_RIGHT,
		"TRAIT_RETARD_ANATOMY" = TRAIT_RETARD_ANATOMY,
		"TRAIT_NASTY_EATER" = TRAIT_NASTY_EATER,
		"TRAIT_WILD_EATER" = TRAIT_WILD_EATER,
		"TRAIT_NOFALLDAMAGE1" = TRAIT_NOFALLDAMAGE1,
		"TRAIT_DISFIGURED" = TRAIT_DISFIGURED,
		"TRAIT_MISSING_NOSE" = TRAIT_MISSING_NOSE,
		"TRAIT_SPELLCOCKBLOCK" = TRAIT_SPELLCOCKBLOCK,
		"TRAIT_ANTIMAGIC" = TRAIT_ANTIMAGIC,
		"TRAIT_SHOCKIMMUNE" = TRAIT_SHOCKIMMUNE,
		"TRAIT_NOSLEEP" = TRAIT_NOSLEEP,
		"TRAIT_ROT_EATER" = TRAIT_ROT_EATER,
		"TRAIT_ORGAN_EATER" = TRAIT_ORGAN_EATER,
		"TRAIT_KNEESTINGER_IMMUNITY" = TRAIT_KNEESTINGER_IMMUNITY,
		"TRAIT_SOUL_EXAMINE" = TRAIT_SOUL_EXAMINE,
		"TRAIT_CRACKHEAD" = TRAIT_CRACKHEAD,
		"TRAIT_COMMIE" = TRAIT_COMMIE,
		"TRAIT_NORUN" = TRAIT_NORUN,
		"TRAIT_GOODLOVER" = TRAIT_GOODLOVER,
		"TRAIT_SEEDKNOW" = TRAIT_SEEDKNOW,
		"TRAIT_FAITHLESS" = TRAIT_FAITHLESS,
		"TRAIT_PERFECT_TRACKER" = TRAIT_PERFECT_TRACKER,
		"TRAIT_BASHDOORS" = TRAIT_BASHDOORS,
		"TRAIT_NOMOOD" = TRAIT_NOMOOD,
		"TRAIT_SIMPLE_WOUNDS" = TRAIT_SIMPLE_WOUNDS,
		"TRAIT_BANDITCAMP" = TRAIT_BANDITCAMP,
		"TRAIT_VAMPMANSION" = TRAIT_VAMPMANSION,
		"TRAIT_VIKINGCAMP" = TRAIT_VIKINGCAMP,
		"TRAIT_LIMPDICK" = TRAIT_LIMPDICK,
		"TRAIT_SEXPASS" = TRAIT_SEXPASS,
		"TRAIT_STEELHEARTED" = TRAIT_STEELHEARTED,
		"TRAIT_SCHIZO_AMBIENCE" = TRAIT_SCHIZO_AMBIENCE,
		"TRAIT_SCREENSHAKE" = TRAIT_SCREENSHAKE,
		"TRAIT_NORUN" = TRAIT_NORUN,
		"TRAIT_GARGLE_SPEECH" = TRAIT_GARGLE_SPEECH,
		"TRAIT_WATERBREATHING" = TRAIT_WATERBREATHING,
		"TRAIT_CHOSEN" = TRAIT_CHOSEN,
		"TRAIT_NOCSIGHT" = TRAIT_NOCSIGHT,
		"TRAIT_MALUMSGRACE" = TRAIT_MALUMSGRACE,
		
		"TRAIT_DEATHBYSNOOSNOO" = TRAIT_DEATHBYSNOOSNOO,
		"TRAIT_POISONBITE" = TRAIT_POISONBITE,
		"TRAIT_STRONGTHROW" = TRAIT_STRONGTHROW,
		"TRAIT_MARTIALARTIST" = TRAIT_MARTIALARTIST,
		"TRAIT_PUGILIST" = TRAIT_PUGILIST,
		"TRAIT_WILDMAGIC" = TRAIT_WILDMAGIC,

		//HS Edit: Some non-rogue traits werent even listed here
		"TRAIT_NOPAIN" = TRAIT_NOPAIN,
		"TRAIT_NOPAINSTUN" = TRAIT_NOPAINSTUN,
		"TRAIT_BLOODLOSS_IMMUNE" = TRAIT_BLOODLOSS_IMMUNE,
		"TRAIT_ROTMAN" = TRAIT_ROTMAN,
		"TRAIT_ZOMBIE_IMMUNE" = TRAIT_ZOMBIE_IMMUNE,
		"TRAIT_NO_BITE" = TRAIT_NO_BITE,
		"TRAIT_NOFLASH" = TRAIT_NOFLASH,
		"TRAIT_BOG_TREKKING" = TRAIT_BOG_TREKKING,

	),
	/obj/item/bodypart = list(
		"TRAIT_PARALYSIS" = TRAIT_PARALYSIS
		),
	/obj/item = list(
		"TRAIT_NODROP" = TRAIT_NODROP,
		"TRAIT_T_RAY_VISIBLE" = TRAIT_T_RAY_VISIBLE,
		"TRAIT_NO_TELEPORT" = TRAIT_NO_TELEPORT
		)
	))

/// value -> trait name, generated on use from trait_by_type global
GLOBAL_LIST(trait_name_map)

/proc/generate_trait_name_map()
	. = list()
	for(var/key in GLOB.traits_by_type)
		for(var/tname in GLOB.traits_by_type[key])
			var/val = GLOB.traits_by_type[key][tname]
			.[val] = tname
