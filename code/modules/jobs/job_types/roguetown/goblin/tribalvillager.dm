/datum/job/roguetown/tribalvillager
	title = "Tribal Villager"
	flag = TRIBALVILLAGER
	department_flag = TRIBAL
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDSPLUS
	display_order = JDO_TRIBALVILLAGER
	min_pq = 0
	max_pq = null
	tutorial = "You are a villager in the tribe, you got basic set of skills you learned over time, mainly labor, backbone of the tribe."
	outfit = /datum/outfit/job/roguetown/tribevillager


	cmode_music = 'sound/music/combat_bum.ogg'

/datum/outfit/job/roguetown/tribevillager/pre_equip(mob/living/carbon/human/H)
	..()
	shirt = /obj/item/clothing/suit/roguetown/shirt/tribalrag
	pants = /obj/item/clothing/under/roguetown/loincloth/brown
	belt = /obj/item/storage/belt/rogue/leather
	backr = /obj/item/storage/backpack/rogue/backpack
	backl = /obj/item/storage/backpack/rogue/satchel
	neck = /obj/item/clothing/neck/roguetown/psicross/talisman
	backpack_contents = list(/obj/item/roguekey/tribe = 1)
	ADD_TRAIT(H, TRAIT_BOG_TREKKING, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NASTY_EATER, TRAIT_GENERIC)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE) //classic tribal spear moment.
		H.mind.adjust_skillrank(/datum/skill/labor/mining, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/lumberjacking, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/fishing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 4 , TRUE) //builders
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 4, TRUE) // builders
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 4, TRUE) //builders
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/music, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/butchering, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, 1, TRUE)
		H.change_stat("intelligence", 6)
		H.change_stat("fortune", 2)
		H.change_stat("endurance", -1)
		H.change_stat("constitution", -1)
	if(isseelie(H))
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/seelie_dust)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/summon_rat)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/strip)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/seelie_kiss)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/splash)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/roustame)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/animate_object)
