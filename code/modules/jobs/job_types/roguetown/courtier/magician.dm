/datum/job/roguetown/magician
	title = "Arch-Mage"
	f_title = "Arch-Sorceress"
	flag = WIZARD
	department_flag = COURTIERS
	selection_color = JCOLOR_COURTIER
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = RACES_ALL_KINDS
	allowed_sexes = list(MALE, FEMALE)
	spells = list(/obj/effect/proc_holder/spell/targeted/touch/prestidigitation, /obj/effect/proc_holder/spell/invoked/projectile/fetch, /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt, /obj/effect/proc_holder/spell/invoked/projectile/fireball, /obj/effect/proc_holder/spell/invoked/projectile/fireball/greater)
	display_order = JDO_MAGICIAN
	tutorial = "Your creed is one dedicated to the conquering of the arcane arts and the constant thrill of knowledge. \
		For decades you have run an academy, dedicated to the pursuit of arcane advancements. \
		You have taught hundreds, and have proven to the people that you are a master of your work. \
		In times of darkness, the universe shall test you, and you will be ready to answer the call."
	outfit = /datum/outfit/job/roguetown/magician
	whitelist_req = TRUE
	give_bank_account = 47
	min_pq = 2
	max_pq = null

/datum/outfit/job/roguetown/magician

/datum/outfit/job/roguetown/magician/pre_equip(mob/living/carbon/human/H)
	..()
	neck = /obj/item/clothing/neck/roguetown/talkstone
	cloak = /obj/item/clothing/cloak/black_cloak
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/black
	pants = /obj/item/clothing/under/roguetown/tights/random
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	beltr = /obj/item/storage/keyring/mage
	id = /obj/item/clothing/ring/gold
	r_hand = /obj/item/rogueweapon/woodstaff
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/slimepotion/lovepotion,/obj/item/reagent_containers/glass/bottle/rogue/poison,/obj/item/reagent_containers/glass/bottle/rogue/healthpot)
	ADD_TRAIT(H, TRAIT_SEEPRICES, "[type]")
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/arcane, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, pick(1,2), TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, pick(1,2), TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, pick(1,2), TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, pick(1,2), TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, pick(1,2), TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
		H.change_stat("strength", -1)
		H.change_stat("constitution", -1)
		H.change_stat("intelligence", 4)
		H.mind.adjust_spellpoints(3)
//		H.faction += "summoner" //can use this to enable summons to attack players. Probably better to keep the mobs for pve purposes for now.
	if(H.age == AGE_OLD)
		if(H.mind)
			H.change_stat("speed", -1)
			H.change_stat("intelligence", 1)
			H.change_stat("perception", 1)
			H.mind.adjust_spellpoints(1)
		belt = /obj/item/storage/belt/rogue/leather/plaquegold
		cloak = null
		head = /obj/item/clothing/head/roguetown/wizhat
		armor = /obj/item/clothing/suit/roguetown/shirt/robe/wizard
		if(ishumannorthern(H))
			H.dna.species.soundpack_m = new /datum/voicepack/male/wizard()
	switch(H.patron?.type)
		if(/datum/patron/divine/pestra)
			if(H.mind)
				H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		else if(/datum/patron/divine/ravox || /datum/patron/inhumen/graggar) //raises the pick(1,2) weapon skills to 2 if they weren't there already
			if(H.mind)
				H.mind.adjust_skillrank(/datum/skill/combat/knives, max((2 - H.mind.get_skill_level(/datum/skill/combat/knives)), 0), TRUE) //basically, (2 - current skill) is added to the total skill value.   
				H.mind.adjust_skillrank(/datum/skill/combat/swords, max((2 - H.mind.get_skill_level(/datum/skill/combat/swords)), 0), TRUE)
		else
			if(H.mind)
				H.mind.adjust_skillrank(/datum/skill/magic/arcane, 1, TRUE)
	
	H.verbs += list(/mob/living/carbon/human/proc/magicreport, /mob/living/carbon/human/proc/magiclearn)
		
	
	
