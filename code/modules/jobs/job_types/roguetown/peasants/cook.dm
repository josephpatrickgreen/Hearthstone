/datum/job/roguetown/cook
	title = "Cook"
	flag = COOK
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = RACES_ALL_KINDSPLUS
	tutorial = "Working closely with the barkeep who owns Skull Crack Inn, the cook should focus on cooking food for all the hungry mouths of Roguetown."

	outfit = /datum/outfit/job/roguetown/cook
	display_order = JDO_COOK
	give_bank_account = 8
	min_pq = -10
	max_pq = null

/datum/outfit/job/roguetown/cook/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/butchering, 2, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltl = /obj/item/roguekey/tavern
	if(H.gender == MALE)
		pants = /obj/item/clothing/under/roguetown/tights/random
		shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt/random
		shoes = /obj/item/clothing/shoes/roguetown/simpleshoes
		backr = /obj/item/storage/backpack/rogue/satchel
		cloak = /obj/item/clothing/cloak/apron/cook
		head = /obj/item/clothing/head/roguetown/cookhat
		neck = /obj/item/storage/belt/rogue/pouch/coins/poor
		H.change_stat("constitution", 2)
	else
		armor = /obj/item/clothing/suit/roguetown/shirt/dress/gen/random
		cloak = /obj/item/clothing/cloak/apron/cook
		head = /obj/item/clothing/head/roguetown/cookhat
		shoes = /obj/item/clothing/shoes/roguetown/simpleshoes
		neck = /obj/item/storage/belt/rogue/pouch/coins/poor
		H.change_stat("constitution", 1)
	if(isseelie(H))
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/seelie_dust)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/summon_rat)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/strip)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/seelie_kiss)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/splash)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/roustame)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/animate_object)
