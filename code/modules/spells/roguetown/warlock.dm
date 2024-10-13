// Eldritch faithless healing
/obj/effect/proc_holder/spell/invoked/eldritchhealing
	name = "Eldritch Healing"
	overlay_state = null
	releasedrain = 30
	chargedrain = 0
	chargetime = 0
	range = 7
	warnie = "sydwarning"
	movement_interrupt = FALSE
	chargedloop = null
	sound = 'sound/magic/heal.ogg'
	invocation_type = "none"
	associated_skill = /datum/skill/magic/arcane
	antimagic_allowed = TRUE
	charge_max = 20 SECONDS
	miracle = FALSE
	var/patronname = ""
	var/targetnotification = ""
	var/othernotification = ""

/obj/effect/proc_holder/spell/invoked/eldritchhealing/cast(list/targets, mob/living/user)
	. = ..()
	if(isliving(targets[1]))
		var/mob/living/target = targets[1]
		if(!HAS_TRAIT(target, TRAIT_FAITHLESS)) //how do you like it?
			to_chat(user, span_warning("The [patronname] refuses to aid a believer in the divine or inhumen - They should ask their own |GOD| for help."))
			return FALSE

		target.visible_message(span_info("[target] "+othernotification), span_notice(targetnotification))
		if(iscarbon(target))
			var/mob/living/carbon/C = target
			var/obj/item/bodypart/affecting = C.get_bodypart(check_zone(user.zone_selected))
			if(affecting)
				if(affecting.heal_damage(50, 50))
					C.update_damage_overlays()
				if(affecting.heal_wounds(50))
					C.update_damage_overlays()
		else
			target.adjustBruteLoss(-50)
			target.adjustFireLoss(-50)
		target.adjustToxLoss(-50)
		target.adjustOxyLoss(-50)
		target.blood_volume += BLOOD_VOLUME_SURVIVE
		return TRUE
	return FALSE

// curse
/obj/effect/proc_holder/spell/invoked/eldritchcurse
	name = "curse of the "
	overlay_state = null
	releasedrain = 30
	chargedrain = 0
	chargetime = 0
	range = 7
	warnie = "sydwarning"
	movement_interrupt = FALSE
	chargedloop = null
	sound = 'sound/magic/heal.ogg'
	invocation_type = "none"
	associated_skill = /datum/skill/magic/arcane
	antimagic_allowed = TRUE
	charge_max = 20 SECONDS
	miracle = FALSE
	var/patronname = ""
	var/datum/status_effect/buff/eldritchcurse/curse
	
/obj/effect/proc_holder/spell/invoked/eldritchcurse/cast(list/targets, mob/living/user)
	if(isliving(targets[1]))
		var/mob/living/carbon/target = targets[1]

		if(target.has_status_effect(curse))
			target.remove_status_effect(curse)
		else
			target.apply_status_effect(curse) //apply debuff

/datum/status_effect/buff/eldritchcurse
	id = "eldritchcurse"
	alert_type = /atom/movable/screen/alert/status_effect/buff/eldritchcurse
	duration = -1

/datum/status_effect/buff/eldritchcurse/archfey
	effectedstats = list("intelligence" = -2, "fortune" = -2)

/datum/status_effect/buff/eldritchcurse/celestial
	effectedstats = list("constitution" = -2, "perception" = -2)

/datum/status_effect/buff/eldritchcurse/fathomless
	effectedstats = list("endurance" = -2, "perception" = -2)

/datum/status_effect/buff/eldritchcurse/genie
	effectedstats = list("fortune" = -4)

/datum/status_effect/buff/eldritchcurse/goo
	effectedstats = list("intelligence" = -2, "constitution" = -2)

/datum/status_effect/buff/eldritchcurse/hexblade
	effectedstats = list("speed" = -2,"strength" = -2)

/datum/status_effect/buff/eldritchcurse/undead
	effectedstats = list("constitution" = -4)

/atom/movable/screen/alert/status_effect/buff/eldritchcurse
	name = "eldritch curse"
	desc = "I am cursed by a lesser diety."
	icon_state = "debuff"

// cloak of flies
/obj/effect/proc_holder/spell/self/cloakofflies
	name = "Cloak of Flies"
	desc = ""
	overlay_state = "null"
	sound = list('sound/magic/whiteflame.ogg')
	active = FALSE

	charge_max = 20  //2 seconds

	warnie = "spellwarning"

	chargedloop = /datum/looping_sound/invokegen
	associated_skill = /datum/skill/magic/arcane //can be arcane, druidic, blood, holy

	xp_gain = FALSE
	miracle = FALSE

	invocation = ""
	invocation_type = "shout" //can be none, whisper, emote and shout
	var/activated = FALSE
	var/rot_type = /datum/component/rot/warlock
	var/static/mutable_appearance/flies = mutable_appearance('icons/roguetown/mob/rotten.dmi', "rotten")

/obj/effect/proc_holder/spell/self/cloakofflies/cast(mob/user = usr)
	..()

	if(activated)
		qdel(user.GetComponent(/datum/component/rot/warlock))
		activated = FALSE
		user.cut_overlay(flies)
		user.update_vision_cone()
		user.visible_message("<span class='info'>The flies surrounding [user] go away.</span>", "<span class='notice'>My cloak of flies dissipates.</span>")
	else
		user.AddComponent(/datum/component/rot/warlock)
		activated = TRUE
		user.add_overlay(flies)
		user.update_vision_cone()
		user.visible_message("<span class='info'>[user] is surrounded in a cloud of flies.</span>", "<span class='notice'>My cloak of flies surrounds me.</span>")

/datum/component/rot/warlock
	soundloop = /datum/looping_sound/fliesloop/quiet

/datum/component/rot/warlock/process()
	..()
	var/mob/living/L = parent
	if(soundloop && soundloop.stopped)
		soundloop.start()
	var/turf/open/T = get_turf(L)
	if(istype(T))
		T.add_pollutants(/datum/pollutant/horriblerot, 10)

/datum/looping_sound/fliesloop/quiet
	mid_sounds = list('sound/misc/fliesloop.ogg')
	mid_length = 60
	volume = 25
	extra_range = 0

//find familiar (imp, psuedodragon, quasit, seelie)
