
/datum/job/roguetown/chieftain
	title = "Chieftain"
	f_title = "Chieftress"
	flag = CHIEFTAIN
	department_flag = TRIBAL
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	spells = list(/obj/effect/proc_holder/spell/self/convertrole/tribal)
	tutorial = "Chieftain or Chieftress is a fatty lazy pig who wishes to do nothing but eat apple pies and fart while sitting on his stone throne."
	whitelist_req = FALSE
	outfit = /datum/outfit/job/roguetown/chieftain

	display_order = JDO_CHIEFTAIN
	min_pq = 2
	max_pq = null
	cmode_music = 'sound/music/combat_tribal.ogg'

/datum/outfit/job/roguetown/chieftain/pre_equip(mob/living/carbon/human/H)
	..()
	H.verbs |= /mob/living/carbon/human/proc/tribalannouncement
	H.verbs |= /mob/living/carbon/human/proc/tribalopenslot
	beltl = /obj/item/rogueweapon/huntingknife/idagger/steel/special
	shirt = /obj/item/clothing/suit/roguetown/shirt/tribalrag
	pants = /obj/item/clothing/under/roguetown/loincloth/brown
	belt = /obj/item/storage/belt/rogue/bone/skullbelt
	armor = /obj/item/clothing/suit/roguetown/armor/bone/chestplate
	head = /obj/item/clothing/head/roguetown/tribalskull
	beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
	shoes = /obj/item/clothing/shoes/roguetown/boots/bonegreaves
	cloak = /obj/item/clothing/cloak/hidecloak
	neck = /obj/item/clothing/neck/roguetown/psicross/talisman
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/roguekey/tribe = 1)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_BOG_TREKKING, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NASTY_EATER, TRAIT_GENERIC)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE) // Chieftess gets nearly same skills as guard.
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 4 , TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 4 , TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)	
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/tracking, 6, TRUE) //Hearthstone change.
		H.mind.adjust_skillrank(/datum/skill/labor/fishing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("intelligence", 2)
		H.change_stat("constitution", 6)
		H.change_stat("endurance", 2)
		H.change_stat("speed", 2)


/mob/living/carbon/human/proc/tribalannouncement()
	set name = "Announcement"
	set category = "Tribe"
	if(stat)
		return
	var/inputty = input("Make an announcement", "ROGUETOWN") as text|null
	if(inputty)
		if(!istype(get_area(src), /area/rogue/outdoors/tribalfort))
			to_chat(src, span_warning("I need to do this from the tribe."))
			return FALSE
		priority_announce("[inputty]", title = "The Tribe announces", sound = 'sound/misc/tribal announcement.ogg')

/mob/living/carbon/human/proc/tribalopenslot()
	set name = "Open Slot"
	set category = "New Kins"
	if(stat)
		return
	var/datum/job/cookjob = SSjob.GetJob("Tribal Cook")
	var/datum/job/guardjob = SSjob.GetJob("Tribal Guard")
	var/datum/job/smithjob = SSjob.GetJob("Tribal Smith")
	var/datum/job/shamanjob = SSjob.GetJob("Tribal Shaman")
	var/datum/job/villagerjob = SSjob.GetJob("Tribal Villager")
	//var/datum/job/slavejob = SSjob.GetJob("Tribal Slave")
	var/list/souloptions = list("Tribal Cook", "Tribal Guard", "Tribal Smith", "Tribal Shaman", "Tribal Villager")
	var/pickedsoul = input("Which worker shall join tribe?", "Available workers") as null|anything in souloptions
	if(!istype(get_area(src), /area/rogue/outdoors/tribalfort))
		to_chat(src, span_warning("I need to do this from the tribe."))
		return FALSE
	if(!pickedsoul)
		return
	switch(pickedsoul)
		if("Tribal Cook")
			cookjob.total_positions += 1
			priority_announce("Tribal Cook shall join our tribe", title = "The Tribe Accept New Kin", sound = 'sound/misc/dun.ogg')
		if("Tribal Guard")
			guardjob.total_positions += 1
			priority_announce("Tribal Guard shall join our tribe", title = "The Tribe Accept New Kin", sound = 'sound/misc/dun.ogg')
		if("Tribal Smith")
			smithjob.total_positions += 1
			priority_announce("Tribal Smith shall join our tribe", title = "The Tribe Accept New Kin", sound = 'sound/misc/dun.ogg')
		if("Tribal Shaman")
			shamanjob.total_positions += 1
			priority_announce("Tribal Shaman shall join our tribe", title = "The Tribe Accept New Kin", sound = 'sound/misc/dun.ogg')
		/*
		if("Tribal Slave")
			slavejob.total_positions += 1
			priority_announce("Tribal Slave shall join our tribe", title = "The Tribe Accept New Slave", sound = 'sound/misc/dun.ogg')
		*/
		if("Tribal Villager")
			villagerjob.total_positions += 1
			priority_announce("A new Villager shall join our tribe", title = "The Tribe Accept New Kin", sound = 'sound/misc/dun.ogg')
