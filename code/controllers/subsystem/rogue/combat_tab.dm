

/mob/living/carbon/human/verb/mark_target()
	set name = "Mark Target"
	set category = "Emotes"

	var/mob/living/carbon/human/H = src

	if(length(H.mind.known_people))
		var/already_enemy = FALSE
		var/mob/living/carbon/human/enemy = input("Who should I mark for death?", "Known people") as anything in H.mind.known_people

		if(length(H.mind.enemies)) 
			if(H.mind.enemies.Find(enemy))
				already_enemy = TRUE
		
		if(!already_enemy)
			H.mind.enemies.Add(enemy)
			if(enemy.mind)
				enemy.mind.hunters.Add(H)		
			to_chat(enemy, span_warning("You sense malicious intent."))
			H.visible_message(span_warning("[H] looks prepared to strike!"), span_info("I am ready to attack."))
			sleep(3 SECONDS)
			to_chat(enemy, span_danger("FIGHT, FLEA OR YIELD!."))
		else //if you target the same person again, remove them from your enemies list
			H.mind.enemies.Remove(enemy)
			if(enemy.mind)
				enemy.mind.hunters.Remove(H)
			to_chat(enemy, span_info("An air of mercy puts you at ease."))
			H.visible_message(span_info("[H] has a forgiving look."), span_info("I forgive [enemy]."))
	else
		to_chat(H, span_warning("I don't know anyone."))
