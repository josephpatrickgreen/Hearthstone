
/obj/item/clothing/gloves/roguetown
	slot_flags = ITEM_SLOT_GLOVES
	body_parts_covered = HANDS
	sleeved = 'icons/roguetown/clothing/onmob/gloves.dmi'
	icon = 'icons/roguetown/clothing/gloves.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/gloves.dmi'
	bloody_icon_state = "bloodyhands"
	sleevetype = "shirt"
	max_heat_protection_temperature = 361

/obj/item/clothing/gloves/roguetown/carapace
	name = "carapace gauntlets"
	desc = "Strong carapace plated gauntlets to sink your pincers into."
	icon_state = "carapace_gauntlets"
	armor = list("blunt" = 60, "slash" = 100, "stab" = 60, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = PLATEHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	smeltresult = /obj/item/ash
	anvilrepair = null
	sewrepair = TRUE
/obj/item/clothing/gloves/roguetown/carapace/dragon
	name = "dragon gauntlets"
	desc = "Strong dragonbone plated gauntlets."
	color = "red"
	armor = list("blunt" = 80, "slash" = 100, "stab" = 60, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 60, "acid" = 0)

/obj/item/clothing/gloves/roguetown/leather
	name = "leather gloves"
	desc = "Leather gloves usually worn by laborers."
	icon_state = "leather_gloves"
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 1, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE

/obj/item/clothing/gloves/roguetown/leather/black
	color = CLOTHING_BLACK

/obj/item/clothing/gloves/roguetown/fingerless
	name = "fingerless gloves"
	desc = "Gloves with holes for fingers, preferred by archers and thieves."
	icon_state = "fingerless_gloves"
	resistance_flags = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE


/obj/item/clothing/gloves/roguetown/angle
	name = "heavy leather gloves"
	desc = "A thick pair of leather gloves."
	icon_state = "angle"
	armor = list("blunt" = 50, "slash" = 25, "stab" = 40, "bullet" = 5, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = SOFTHIT
	max_integrity = 100
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE

/obj/item/clothing/gloves/roguetown/chain
	name = "chain gauntlets"
	desc = "Gauntlets made with steel interlinking rings, provides adequate protection against slashing attacks."
	icon_state = "cgloves"
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = CHAINHIT
	max_integrity = 200
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/gloves/roguetown/chain/iron
	icon_state = "icgloves"
	desc = "Gauntlets made with interlinking rings, provides adequate protection against slashing attacks. Iron is cheaper - but mildly weaker."
	max_integrity = 125
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron

//rogtodo sprites for this
/obj/item/clothing/gloves/roguetown/plate
	name = "plate gauntlets"
	desc = "A heavy set of plate gauntlets which provide excellent protection."
	icon_state = "gauntlets"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = null
	blocksound = PLATEHIT
	max_integrity = 300
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/gloves/roguetown/graggaritegauntletsleader
	name = "graggarite leader gauntlets"
	desc = "A heavy set of plate gauntlets which provide excellent protection. Sharp."
	icon_state = "graggaritegauntletsleader"
	item_state = "graggaritegauntletsleader"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = null
	blocksound = PLATEHIT
	max_integrity = 300
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel	

/obj/item/clothing/gloves/roguetown/grenzelgloves
	name = "grenzelhoft gloves"
	desc = "Fancy gloves worn by foreign mercenaries."
	icon_state = "grenzelgloves"
	item_state = "grenzelgloves"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	armor = list("blunt" = 15, "slash" = 15, "stab" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE

/obj/item/clothing/gloves/roguetown/footmangauntlets
	name = "footman gauntlets"
	desc = "Gauntlets worn by Grenzelhoft footmen."
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = PLATEHIT
	max_integrity = 125
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	icon_state = "footmangauntlets"
	item_state = "footmangauntlets"
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/gloves/roguetown/graggaritegauntlets
	name = "graggarite gauntlets"
	desc = "Gauntlets worn by Graggarite fanatics."
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = PLATEHIT
	max_integrity = 125
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	icon_state = "graggaritegauntlets"
	item_state = "graggaritegauntlets"
	smeltresult = /obj/item/ingot/iron	

/obj/item/clothing/gloves/roguetown/katefractoiigauntlets
	name = "katefractoii gauntlets"
	desc = "Gauntlets worn by Katefractoii heavy cavalry."
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = PLATEHIT
	max_integrity = 125
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	icon_state = "katefractoiigauntlets"
	item_state = "katefractoiigauntlets"
	smeltresult = /obj/item/ingot/iron	

/obj/item/clothing/gloves/roguetown/dwarfgauntlets
	name = "dwarven gauntlets"
	desc = "A heavy set of Dwarven gauntlets which provide excellent protection."
	icon_state = "dwarvengauntlets"
	item_state = "dwarvengauntlets"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = null
	blocksound = PLATEHIT

/obj/item/clothing/gloves/roguetown/darkelfbracers
	name = "raider bracers"
	desc = "Bracers which cover the wrists, provides adequate protection while still allowing ease of movement."
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = PLATEHIT
	max_integrity = 200
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	icon_state = "darkelfgauntlets"
	item_state = "darkelfgauntlets"
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/gloves/roguetown/forestergauntlets
	name = "forester gauntlets"
	desc = "Wooden gauntlets which provide a small amount of protection."
	icon_state = "forestergauntlets"
	item_state = "forestergauntlets"
	smeltresult = /obj/item/ash

/obj/item/clothing/gloves/roguetown/brigandinegauntlets
	name = "brigandine gauntlets"
	desc = "Gauntlets made using the brigandine style."
	icon_state = "brigandine_gloves"
	item_state = "brigandine_gloves"
	armor = list("blunt" = 30, "slash" = 70, "stab" = 50, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = CHAINHIT
	max_integrity = 200
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/gloves/roguetown/plate/spellslingergauntlets
	name = "spellslinger gauntlets"
	desc = "A heavy set of gauntlets worn by spellslingers."
	icon_state = "spellslingergauntlets"
	item_state = "spellslingergauntlets"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = null
	blocksound = PLATEHIT
	max_integrity = 300
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel	

/obj/item/clothing/gloves/roguetown/plate/zybantinegauntlets
	name = "zybantine gauntlets"
	desc = "Gauntlets worn by Zybantine soldiers."
	icon_state = "zybantinegauntlets"
	item_state = "zybantinegauntlets"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = null
	blocksound = PLATEHIT
	max_integrity = 300
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel	

/obj/item/clothing/gloves/roguetown/feldgloves
	name = "long gloves"
	desc = "Long, thick gloves."
	icon_state = "feldgloves"
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 1, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE

/obj/item/clothing/gloves/roguetown/surggloves
	name = "long gloves"
	desc = "Long, thick gloves."
	icon_state = "surggloves"
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 1, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
