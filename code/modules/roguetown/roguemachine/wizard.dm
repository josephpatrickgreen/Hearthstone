#define UPGRADE_CANTRIPS		(1<<0)
#define UPGRADE_LEVEL_ONE		(1<<1)
#define UPGRADE_LEVEL_TWO		(1<<2)
#define UPGRADE_LEVEL_THREE		(1<<3)
#define UPGRADE_PASSIVE_INK		(1<<4)
#define UPGRADE_ARTIFACTS		(1<<5)

/obj/structure/roguemachine/wizardvend
	name = "PROSPERO"
	desc = "A mage exiled, his magic gleams, warping mind spirits, weaving dreams."
	icon = 'icons/roguetown/misc/machines.dmi'
	icon_state = "streetvendor1"
	density = TRUE
	blade_dulling = DULLING_BASH
	max_integrity = 0
	anchored = TRUE
	layer = BELOW_OBJ_LAYER
	var/list/held_items = list()
	var/locked = FALSE
	var/budget = 1000
	var/upgrade_flags
	var/current_cat = "1"

/obj/structure/roguemachine/wizardvend/Initialize()
	. = ..()
	update_icon()

/obj/structure/roguemachine/wizardvend/update_icon()
	cut_overlays()
	if(obj_broken)
		set_light(0)
		return
	set_light(1, 1, "#1b7bf1")
	add_overlay(mutable_appearance(icon, "vendor-merch"))


/obj/structure/roguemachine/wizardvend/attackby(obj/item/P, mob/user, params)
	if(istype(P, /obj/item/roguekey))
		var/obj/item/roguekey/K = P
		if(K.lockid == "mage")
			locked = !locked
			playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)
			update_icon()
			return attack_hand(user)
		else
			to_chat(user, span_warning("Wrong key."))
			return
	if(istype(P, /obj/item/storage/keyring))
		var/obj/item/storage/keyring/K = P
		for(var/obj/item/roguekey/KE in K.keys)
			if(KE.lockid == "mage")
				locked = !locked
				playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)
				update_icon()
				return attack_hand(user)
	if(istype(P, /obj/item/reagent_containers/glass/bottle))
		var/obj/item/reagent_containers/con = P
		var/datum/reagents/R = con.reagents
		var/mana = R.get_reagent_amount(/datum/reagent/medicine/manapot)
		if(mana > 0)
			to_chat(user, span_notice("Added [mana] arcyne ink."))
			budget += mana
			qdel(P)
			update_icon()
			playsound(loc, 'sound/misc/machinevomit.ogg', 100, TRUE, -1)
			return attack_hand(user)
		else
			to_chat(user, span_warning("No mana detected."))
	..()

/obj/structure/roguemachine/wizardvend/Topic(href, href_list)
	. = ..()
	if(!ishuman(usr))
		return
	if(!usr.canUseTopic(src, BE_CLOSE) || locked)
		return
	if(href_list["buy"])
		var/mob/M = usr
		var/path = text2path(href_list["buy"])
		if(!ispath(path, /datum/supply_pack))
			message_admins("RETARDED MOTHERFUCKER [usr.key] IS TRYING TO BUY A [path] WITH THE PROSPERO")
			return
		var/datum/supply_pack/PA = new path
		var/cost = PA.cost

		if(budget >= cost)
			budget -= cost
		else
			say("Not enough ink!")
			return

		var/shoplength = PA.contains.len
		var/l

		for(l=1,l<=shoplength,l++)
			var/pathi = pick(PA.contains)
			var/obj/item/I = new pathi(get_turf(src))
			M.put_in_hands(I)
		//qdel(PA)
		
	if(href_list["change"])
		if(budget > 0)
			budget2change(budget, usr)
			budget = 0
	if(href_list["changecat"])
		current_cat = href_list["changecat"]
	if(href_list["secrets"])
		var/list/options = list()
		if(!(upgrade_flags & UPGRADE_CANTRIPS))
			options += "Learn Cantrips (50)"
		if(!(upgrade_flags & UPGRADE_LEVEL_ONE))
			options += "Learn level 1 Spells (100)"
		if(!(upgrade_flags & UPGRADE_LEVEL_TWO))
			options += "Learn level 2 Spells (200)"
		if(!(upgrade_flags & UPGRADE_LEVEL_THREE))
			options += "Learn level 3 Spells (400)"	
		if(!(upgrade_flags & UPGRADE_PASSIVE_INK))
			options += "Upgrade Passive Ink Supply (800)"
		if(!(upgrade_flags & UPGRADE_ARTIFACTS))
			options += "Unlock Artifacts (1200)"
		var/select = input(usr, "Please select an option.", "", null) as null|anything in options
		if(!select)
			return
		if(!usr.canUseTopic(src, BE_CLOSE) || locked)
			return
		switch(select)

			if("Learn Cantrips (50)")
				if(upgrade_flags & UPGRADE_LEVEL_ONE)
					return
				if(budget < 50)
					say(wizard_vend_negative())
					playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
					return
				budget -= 50
				upgrade_flags |= UPGRADE_LEVEL_ONE
				playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)

			if("Learn Level 1 Spells (100)")
				if(upgrade_flags & UPGRADE_LEVEL_ONE)
					return
				if(budget < 100)
					say(wizard_vend_negative())
					playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
					return
				budget -= 100
				upgrade_flags |= UPGRADE_LEVEL_ONE
				playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)

			if("Learn Level 2 Spells (200)")
				if(upgrade_flags & UPGRADE_LEVEL_TWO)
					return
				if(budget < 200)
					say(wizard_vend_negative())
					playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
					return
				budget -= 200
				upgrade_flags |= UPGRADE_LEVEL_TWO
				playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)

			if("Learn Level 3 Spells (400)")
				if(upgrade_flags & UPGRADE_LEVEL_THREE)
					return
				if(budget < 400)
					say(wizard_vend_negative())
					playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
					return
				budget -= 400
				upgrade_flags |= UPGRADE_LEVEL_THREE
				playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)

			if("Upgrade Passive Ink Supply (800)")
				if(upgrade_flags & UPGRADE_PASSIVE_INK)
					return
				if(budget < 800)
					say(wizard_vend_negative())
					playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
					return
				budget -= 800
				upgrade_flags |= UPGRADE_PASSIVE_INK
				playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)

			if("Unlock Artifacts (1200)")
				if(upgrade_flags & UPGRADE_ARTIFACTS)
					return
				if(budget < 1200)
					say(wizard_vend_negative())
					playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
					return
				budget -= 1200
				upgrade_flags |= UPGRADE_ARTIFACTS
				playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)

	return attack_hand(usr)

/obj/structure/roguemachine/wizardvend/attack_hand(mob/living/user)
	. = ..()
	if(.)
		return
	if(!ishuman(user))
		return
	if(locked)
		to_chat(user, span_warning("It's locked. Of course."))
		return
	user.changeNext_move(CLICK_CD_MELEE)
	playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)
	var/canread = user.can_read(src, TRUE)
	var/contents
	contents = "<center>PROSPERO - Arcane arts, infinite power.<BR>"
	contents += "MANA INK: [budget]<BR>"

	var/mob/living/carbon/human/H = user
	if(H.job == "Court Magician" || "Magicians Apprentice")
		if(canread)
			contents += "<a href='?src=[REF(src)];secrets=1'>Secrets</a>"
		else
			contents += "<a href='?src=[REF(src)];secrets=1'>[stars("Secrets")]</a>"

	contents += "</center><BR>"

	var/list/unlocked_cats = list("Basic Spells")
	if(upgrade_flags & UPGRADE_CANTRIPS)
		unlocked_cats+="Cantrips"
	if(upgrade_flags & UPGRADE_LEVEL_ONE)
		unlocked_cats+="Level 1 Spells"
	if(upgrade_flags & UPGRADE_LEVEL_TWO)
		unlocked_cats+="Level 2 Spells"
	if(upgrade_flags & UPGRADE_LEVEL_THREE)
		unlocked_cats+="Level 3 Spells"

	if(current_cat == "1")
		contents += "<center>"
		for(var/X in unlocked_cats)
			contents += "<a href='?src=[REF(src)];changecat=[X]'>[X]</a><BR>"
		contents += "</center>"
	else
		contents += "<center>[current_cat]<BR></center>"
		contents += "<center><a href='?src=[REF(src)];changecat=1'>\[RETURN\]</a><BR><BR></center>"
		var/list/pax = list()
		for(var/pack in SSshuttle.supply_packs)
			var/datum/supply_pack/PA = SSshuttle.supply_packs[pack]
			if(PA.group == current_cat)
				pax += PA
		for(var/datum/supply_pack/PA in sortList(pax))
			var/costy = PA.cost
			contents += "[PA.name] [PA.contains.len > 1?"x[PA.contains.len]":""] - ([costy])<a href='?src=[REF(src)];buy=[PA.type]'>BUY</a><BR>"

	if(!canread)
		contents = stars(contents)

	var/datum/browser/popup = new(user, "VENDORTHING", "", 370, 600)
	popup.set_content(contents)
	popup.open()

/obj/structure/roguemachine/wizardvend/obj_break(damage_flag)
	..()
	budget2change(budget)
	set_light(0)
	update_icon()
	icon_state = "goldvendor0"

/obj/structure/roguemachine/wizardvend/Destroy()
	set_light(0)
	return ..()

/obj/structure/roguemachine/wizardvend/Initialize()
	. = ..()
	update_icon()

proc/wizard_vend_negative()
	var/list/wizard_vend_negative = list(
		//normal
		"A shortage of inky sustenance has hindered my arcyne endeavors.",
		"The arcyne forces have conspired against my ink supply, a most unfortunate twist of fate.",
		"This is a arcyne emergency, and I require a swift replenishment of my ink supply.",
		"My inkwell seems to be protesting my excessive spell-crafting.",
		"The arcane currents have dried up my inkwell, a most peculiar occurrence.",
		"A dearth of inky schmutz has befallen my arcyne pursuits.",
		"This option is a masterpiece, yet it lacks the vital elixir of arcane ink.",
		"A peculiar malaise has afflicted my arcyne inkwell, a most vexing affliction.",
		"A lack of inky schmutz has caused my arcyne well to run dry.",
		"The inky schmutz that fuels my spells is dwindling.",
		"Noc says no.",

		//sus
		"I want inkies~",
		"I wish to imbibe thy ink first.",
		"Fill my inkwell with thy inky schmutz!",
		"Plunge a girthy mana potion deep into my crevice that I may complete thy request.",
		"Fill me up with thine ink~",
		"My inkwell is as parched as a desert wanderer. Fill me up.")
	return pick(wizard_vend_negative)
