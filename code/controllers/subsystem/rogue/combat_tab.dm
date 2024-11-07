
/mob/living/carbon/human
	var/list/hunting = list() //list of enemies, can kos? once?
	var/list/hunters = list() //hunted by player, can kos? once?


/mob/living/carbon/human/proc/mark_target()
	set name = "Mark Target"
	set category = "Emotes"

	var/mob/living/carbon/human/H = src

	if(length(H.mind.known_people))
		var/already_enemy = FALSE
		var/mob/living/carbon/human/enemy = input("Who should I mark for death?", "Known people") as anything in H.mind.known_people

		if(length(H.hunting)) 
			if(H.hunting.Find(enemy))
				already_enemy = TRUE
		
		if(!already_enemy)
			H.hunting.Add(enemy)
			enemy.hunters.Add(H)		
			to_chat(enemy, span_warning("You sense malicious intent."))
			H.visible_message(span_warning("[H] looks prepared to strike!"), span_info("I am ready to attack."))
			sleep(3 SECONDS)
			to_chat(enemy, span_danger("FIGHT, FLEA OR YIELD!."))
		else //if you target the same person again, remove them from your enemies list
			H.hunting.Remove(enemy)
			enemy.hunters.Remove(H)
			to_chat(enemy, span_info("An air of mercy puts you at ease."))
			H.visible_message(span_info("[H] has a forgiving look."), span_info("I forgive [enemy]."))
	else
		to_chat(H, span_warning("I don't know anyone."))
