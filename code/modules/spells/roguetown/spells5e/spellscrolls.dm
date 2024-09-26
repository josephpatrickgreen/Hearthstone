//! --Ham-Hole Scrolls-- !/
/obj/item/book/granter/spell/spells5e/
	desc = "A scroll of potential known only to those that can decipher its secrets."
	icon = 'icons/roguetown/items/misc.dmi'
	oneuse = TRUE
	drop_sound = 'sound/foley/dropsound/paper_drop.ogg'
	pickup_sound =  'sound/blank.ogg'
	remarks = list("Fascinating!", "Is that so...", "Like this?", "Really now...", "There's a little schmutz on this section...")

/obj/item/book/granter/spell/blackstone/onlearned(mob/living/carbon/user)
	..()
	if(oneuse == TRUE)
		name = "siphoned scroll"
		desc = "A scroll once inscribed with magical scripture. The surface is now barren of knowledge, siphoned by someone else. It's utterly useless."
		icon_state = "scroll"
		user.visible_message(span_warning("[src] has had its magic ink ripped from the scroll!"))

//backpack full of spell scrolls
/obj/item/storage/backpack/rogue/backpack/spells5e/PopulateContents()
	new /obj/item/book/granter/spell/spells5e/acidsplash5e(src)
	new /obj/item/book/granter/spell/spells5e/bladeward5e(src)
	new /obj/item/book/granter/spell/spells5e/createbonfire5e(src)
	new /obj/item/book/granter/spell/spells5e/chilltouch5e(src)
	new /obj/item/book/granter/spell/spells5e/encodethoughts5e(src)
	new /obj/item/book/granter/spell/spells5e/frostbite5e(src)
	new /obj/item/book/granter/spell/spells5e/guidance5e(src)
	new /obj/item/book/granter/spell/spells5e/infestation5e(src)
	new /obj/item/book/granter/spell/spells5e/light5e(src)

//cantrips
/obj/item/book/granter/spell/spells5e/acidsplash5e
	name = "Scroll of Acid Splash"
	spell = /obj/effect/proc_holder/spell/invoked/projectile/acidsplash5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/bladeward5e
	name = "Scroll of Blade Ward"
	spell = /obj/effect/proc_holder/spell/self/bladeward5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/boomingblade5e
	name = "Scroll of Booming Blade"
	spell = /obj/effect/proc_holder/spell/invoked/boomingblade5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/createbonfire5e
	name = "Scroll of Create Bonfire"
	spell = /obj/effect/proc_holder/spell/aoe_turf/conjure/createbonfire5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/chilltouch5e
	name = "Scroll of Chill Touch"
	spell = /obj/effect/proc_holder/spell/invoked/chilltouch5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/decompose5e
	name = "Scroll of Decompose"
	spell = /obj/effect/proc_holder/spell/invoked/decompose5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/eldritchblast5e
	name = "Scroll of Eldritch Blast"
	spell = /obj/effect/proc_holder/spell/invoked/projectile/eldritchblast5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/encodethoughts5e
	name = "Scroll of Encode Thoughts"
	spell = /obj/effect/proc_holder/spell/invoked/encodethoughts5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/firebolt5e
	name = "Scroll of Fire Bolt"
	spell = /obj/effect/proc_holder/spell/invoked/projectile/firebolt5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/frostbite5e
	name = "Scroll of Frostbite"
	spell = /obj/effect/proc_holder/spell/invoked/frostbite5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/greenflameblade5e
	name = "Scroll of Green-Flame Blade"
	spell = /obj/effect/proc_holder/spell/invoked/greenflameblade5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/guidance5e
	name = "Scroll of Guidance"
	spell = /obj/effect/proc_holder/spell/invoked/guidance5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/infestation5e
	name = "Scroll of Infestation"
	spell = /obj/effect/proc_holder/spell/invoked/infestation5e
	spellname = "acid splash"
	icon_state ="scrollred"

/obj/item/book/granter/spell/spells5e/light5e
	name = "Scroll of Light"
	spell = /obj/effect/proc_holder/spell/targeted/light5e
	spellname = "acid splash"
	icon_state ="scrollred"
