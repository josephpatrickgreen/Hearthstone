

/obj/item/natural/hide
	name = "hide"
	icon_state = "hide"
	desc = "Hide from one of Gott's creachers."
	dropshrink = 0.50
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sellprice = 6

/obj/item/natural/fur
	name = "fur"
	icon_state = "wool1"
	desc = "Fur from one of Gott's creachers."
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	color = "#5c5243"
	sellprice = 10

/obj/item/natural/carapace
	name = "carapace"
	icon_state = "carapace"
	desc = "Carapace from one of Gott's watery creachers."
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/food_drop.ogg'
	sellprice = 14
/obj/item/natural/carapace/dragon
	name = "dragonscale"
	icon_state = "carapace"
	desc = "Carapace from one of Gott's feiry creachers."
	color = "red"
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/food_drop.ogg'
	sellprice = 14

//RTD make this a storage item and make clickign on animals with things put it in storage
/obj/item/natural/saddle
	name = "saddle"
	icon_state = "saddle"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK_L
	resistance_flags = FLAMMABLE
	gripped_intents = list(/datum/intent/use)
	force = 0
	throwforce = 0
	sellprice = 22
	twohands_required = TRUE

/obj/item/natural/saddle/attack(mob/living/target, mob/living/carbon/human/user)
	if(istype(target, /mob/living/simple_animal))
		testing("yea1")
		var/mob/living/simple_animal/S = target
		if(S.can_saddle && !S.ssaddle)
			testing("yea2")
			if(!target.has_buckled_mobs())
				user.visible_message(span_warning("[user] tries to saddle [target]..."))
				if(do_after(user, 40, target = target))
					S.name = input("Choose a new name for your mount!","Name", S.name)
					playsound(loc, 'sound/foley/saddledismount.ogg', 100, FALSE)
					user.dropItemToGround(src)
					S.ssaddle = src
					src.forceMove(S)
					S.update_icon()
		return
	..()

/mob/living/simple_animal
	var/can_saddle = FALSE
	var/obj/item/ssaddle
	var/simple_detect_bonus = 0 // A flat percentage bonus to our ability to detect sneaking people only. Use in lieu of giving mobs huge STAPER bonuses if you want them to be observant.

/obj/item/natural/bone
	name = "bone"
	icon_state = "bone"
	desc = "A bone from a dead animal or person."
	blade_dulling = 0
	max_integrity = 20
	static_debris = null
	obj_flags = null
	firefuel = null
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FLAMMABLE
	twohands_required = FALSE
	gripped_intents = null
	slot_flags = ITEM_SLOT_MOUTH|ITEM_SLOT_HIP
	bundletype = /obj/item/natural/bundle/bone
	mill_result = /obj/item/ash/bonemeal

/obj/item/natural/volf_head
	name = "volf head"
	icon_state = "volf_head"
	desc = "Dismembered head of a volf."
	dropshrink = 0.90
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/gen_drop.ogg'
	sellprice = 20
	dropshrink = 0.50

/obj/item/natural/dragon_head
	name = "dragon head"
	icon_state = "volf_head"
	color = "red"
	desc = "Dismembered head of a dragon."
	dropshrink = 0.90
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/gen_drop.ogg'
	sellprice = 100
	dropshrink = 0.50

/obj/item/natural/antler
	name = "antler"
	icon_state = "antler"
	desc = "Antler of an animal"
	dropshrink = null
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/gen_drop.ogg'
	sellprice = 20
	dropshrink = 0.50
