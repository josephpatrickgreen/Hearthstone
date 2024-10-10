/datum/crafting_recipe/roguetown/weaving
	structurecraft = /obj/machinery/loom
	skillcraft = /datum/skill/misc/sewing
	//Silk goods sell for an extra 50% over cost to make. If high craft difficulty, make sell for ~75% more.
	//Why? Well, simple. Because no one ever wears this shit otherwise besides RP and requires engaging hostile mobs.
	//Silk = ~3 mammon per sinlge thread.
	//Cloth = ~1 mammon per piece. It's just fiber with utility, really.

/datum/crafting_recipe/roguetown/weaving/rags
	name = "webbed shirt"
	result = list(/obj/item/clothing/suit/roguetown/shirt/undershirt/webs)
	reqs = list(/obj/item/natural/silk = 1)
	craftdiff = 1
	sellprice = 6	//Double resale

/datum/crafting_recipe/roguetown/weaving/webbing
	name = "webbed leggings"
	result = list(/obj/item/clothing/under/roguetown/webs)
	reqs = list(/obj/item/natural/silk = 2)
	craftdiff = 1
	sellprice = 9	//Good resale

/datum/crafting_recipe/roguetown/weaving/cloak
	name = "silk half cloak"
	result = list(/obj/item/clothing/cloak/half)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 20	//Difficult, so VERY good resale.

/datum/crafting_recipe/roguetown/weaving/shirt
	name = "formal silks"
	result = list(/obj/item/clothing/suit/roguetown/shirt/undershirt/puritan)
	reqs = list(/obj/item/natural/silk = 5)
	craftdiff = 3
	sellprice = 32	//Valued at 15 cost, so over double resale due to difficulty.

/datum/crafting_recipe/roguetown/weaving/shepardmask
	name = "half-mask"
	result = list(/obj/item/clothing/mask/rogue/shepherd)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 1)
	craftdiff = 1
	sellprice = 9	//Good resale

/datum/crafting_recipe/roguetown/weaving/shawl
	name = "shawl"
	result = list(/obj/item/clothing/neck/roguetown/shawl)
	reqs = list(/obj/item/natural/cloth = 2)
	craftdiff = 1
	sellprice = 5	//Cheap, lucky getting a bit over double worth.

/datum/crafting_recipe/roguetown/weaving/monkrobes
	name = "monk robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/monk)
	reqs = list(/obj/item/natural/cloth = 3)
	craftdiff = 4
	sellprice = 16	//Good resale, but cheap.

/datum/crafting_recipe/roguetown/weaving/astratarobe
	name = "astrata robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/astrata)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/silk = 1)
	craftdiff = 4
	sellprice = 25	//Good resale, very high difficulty.

/datum/crafting_recipe/roguetown/weaving/astratahood
	name = "solar hood"
	result = list(/obj/item/clothing/head/roguetown/roguehood/astrata)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 25	//Good resale, very high difficulty.

/datum/crafting_recipe/roguetown/weaving/nocrobe
	name = "noc robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/noc)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/silk = 1)
	craftdiff = 4
	sellprice = 25	//Good resale, very high difficulty.

/datum/crafting_recipe/roguetown/weaving/nochood
	name = "moon hood"
	result = list(/obj/item/clothing/head/roguetown/roguehood/nochood)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 20	//Good resale, high difficulty.

/datum/crafting_recipe/roguetown/weaving/tricksterhood
	name = "trickster hood"
	result = list(/obj/item/clothing/head/roguetown/roguehood/tricksterhood)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 20	//Good resale, high difficulty.

/datum/crafting_recipe/roguetown/weaving/dendorrobe
	name = "dendor robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/dendor)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/silk = 1)
	craftdiff = 4
	sellprice = 25	//Good resale, very high difficulty.

/datum/crafting_recipe/roguetown/weaving/necrarobe
	name = "necra robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/necra)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/silk = 1)
	craftdiff = 4
	sellprice = 25	//Good resale, very high difficulty.

/datum/crafting_recipe/roguetown/weaving/necrahood
	name = "necra hood"
	result = list(/obj/item/clothing/head/roguetown/necrahood)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 20	//Good resale, high difficulty.

/datum/crafting_recipe/roguetown/weaving/barkeep
	name = "bar dress"
	result = list (/obj/item/clothing/suit/roguetown/shirt/dress)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 2)
	craftdiff = 5
	sellprice = 30	//Very high difficulty, so very good resale.

/datum/crafting_recipe/roguetown/weaving/silkdress
	name = "chemise"
	result = list (/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/random)
	reqs = list(/obj/item/natural/fibers = 2,
				/obj/item/natural/silk = 3)
	craftdiff = 5
	sellprice = 30	//Very high difficulty, so very good resale.

/datum/crafting_recipe/roguetown/weaving/silkcoat
	name = "silk coat"
	result = list (/obj/item/clothing/suit/roguetown/armor/silkcoat)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 3,
				/obj/item/natural/fur = 2)
	craftdiff = 5
	sellprice = 60	//Very high difficulty and ~27 mammon in raw material put in.

//Eora content from Stonekeep
/datum/crafting_recipe/roguetown/weaving/eoramask
	name = "eora mask"
	result = list(/obj/item/clothing/head/roguetown/eoramask)
	reqs = list(/obj/item/ingot/silver,
				/obj/item/natural/silk = 4)
	craftdiff = 3
	sellprice = 20	//Good resell, high difficulty.

/datum/crafting_recipe/roguetown/weaving/eorarobes
	name = "eora robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/eora)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 20	//Good resell, high difficulty.

/datum/crafting_recipe/roguetown/weaving/exoticsilkbra
	name = "Exotic Silk Bra"
	result = list (/obj/item/clothing/suit/roguetown/shirt/exoticsilkbra)
	reqs = list(/obj/item/natural/silk = 3,
				/obj/item/clothing/ring/gold = 1)
	craftdiff = 5
	sellprice = 50	//Very good resell, high difficulty. (Whore)

/datum/crafting_recipe/roguetown/weaving/exoticsilkmask
	name = "Exotic Silk Mask"
	result = list (/obj/item/clothing/mask/rogue/exoticsilkmask)
	reqs = list(/obj/item/natural/silk = 1,
				/obj/item/clothing/ring/gold = 1)
	craftdiff = 5
	sellprice = 50	//Very good resell, high difficulty. (Whore)

/datum/crafting_recipe/roguetown/weaving/exoticsilkbelt
	name = "Exotic Silk Belt"
	result = list (/obj/item/storage/belt/rogue/leather/exoticsilkbelt)
	reqs = list(/obj/item/natural/silk = 2,
				/obj/item/clothing/ring/gold = 1)
	craftdiff = 5
	sellprice = 50	//Very good resell, high difficulty. (Whore)
