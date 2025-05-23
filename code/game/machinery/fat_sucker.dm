/obj/machinery/fat_sucker
	name = "lipid extractor"
	desc = "Safely and efficiently extracts excess fat from a subject."
	icon = 'icons/obj/machines/fat_sucker.dmi'
	icon_state = "fat"

	state_open = FALSE
	density = TRUE
	req_access = list(ACCESS_KITCHEN)
	circuit = /obj/item/circuitboard/machine/fat_sucker
	var/processing = FALSE
	var/start_at = NUTRITION_LEVEL_WELL_FED
	var/stop_at = NUTRITION_LEVEL_STARVING
	var/free_exit = TRUE //set to false to prevent people from exiting before being completely stripped of fat
	var/bite_size = 7.5 //amount of nutrients we take per second
	var/nutrients //amount of nutrients we got build up
	var/nutrient_to_meat = 90 //one slab of meat gives about 52 nutrition
	var/datum/looping_sound/microwave/soundloop //100% stolen from microwaves
	var/breakout_time = 600

	var/next_fact = 10 //in ticks, so about 20 seconds
	var/static/list/fat_facts = list(\
	"Fats are triglycerides made up of a combination of different building blocks; glycerol and fatty acids.", \
	"Adults should get a recommended 20-35% of their energy intake from fat.", \
	"Being overweight or obese puts you at an increased risk of chronic diseases, such as cardiovascular diseases, metabolic syndrome, type 2 diabetes and some types of cancers.", \
	"Not all fats are bad. A certain amount of fat is an essential part of a healthy balanced diet. " , \
	"Saturated fat should form no more than 11% of your daily calories.", \
	"Unsaturated fat, that is monounsaturated fats, polyunsaturated fats and omega-3 fatty acids, is found in plant foods and fish." \
	)

/obj/machinery/fat_sucker/Initialize(mapload)
	. = ..()
	soundloop = new(src,  FALSE)
	update_icon()

/obj/machinery/fat_sucker/Destroy()
	QDEL_NULL(soundloop)
	return ..()

/obj/machinery/fat_sucker/RefreshParts()
	..()
	var/rating = 0
	var/nutriment_rating
	for(var/obj/item/stock_parts/micro_laser/L in component_parts)
		rating += L.rating
	for(var/obj/item/stock_parts/manipulator/M in component_parts)
		nutriment_rating += M.rating
	bite_size = initial(bite_size) + rating * 2.5
	nutrient_to_meat = initial(nutrient_to_meat) - nutriment_rating * 5

/obj/machinery/fat_sucker/examine(mob/user)
	. = ..()
	. += "[span_notice("Alt-Click to toggle the safety hatch.")]\n"+\
			"[span_notice("Removing [bite_size] nutritional units per operation.")]\n"+\
			span_notice("Requires [nutrient_to_meat] nutritional units per meat slab.")

/obj/machinery/fat_sucker/close_machine(mob/user)
	if(panel_open)
		to_chat(user, span_warning("You need to close the maintenance hatch first!"))
		return
	..()
	playsound(src, 'sound/machines/click.ogg', 50)
	if(occupant)
		var/mob/living/L = occupant
		if(!iscarbon(L) || HAS_TRAIT(L, TRAIT_POWERHUNGRY) || !(MOB_ORGANIC in L?.mob_biotypes))
			occupant.forceMove(drop_location())
			set_occupant(null)
			return

		to_chat(occupant, span_notice("You enter [src]"))
		addtimer(CALLBACK(src, PROC_REF(start_extracting)), 20, TIMER_OVERRIDE|TIMER_UNIQUE)
		update_icon()

/obj/machinery/fat_sucker/open_machine(mob/user)
	make_meat()
	playsound(src, 'sound/machines/click.ogg', 50)
	if(processing)
		stop()
	..()

/obj/machinery/fat_sucker/container_resist(mob/living/user)
	if(!free_exit || state_open)
		to_chat(user, span_notice("The emergency release is not responding! You start pushing against the hull!"))
		user.changeNext_move(CLICK_CD_BREAKOUT)
		user.last_special = world.time + CLICK_CD_BREAKOUT
		user.visible_message(span_notice("You see [user] kicking against the door of [src]!"), \
			span_notice("You lean on the back of [src] and start pushing the door open... (this will take about [DisplayTimeText(breakout_time)].)"), \
			span_italics("You hear a metallic creaking from [src]."))
		if(do_after(user, breakout_time, target = src, hidden = TRUE))
			if(!user || user.stat != CONSCIOUS || user.loc != src || state_open)
				return
			free_exit = TRUE
			user.visible_message(span_warning("[user] successfully broke out of [src]!"), \
				span_notice("You successfully break out of [src]!"))
			open_machine()
		return
	open_machine()

/obj/machinery/fat_sucker/interact(mob/user)
	if(state_open)
		close_machine()
	else if(!processing || free_exit)
		open_machine()
	else
		to_chat(user, span_warning("The safety hatch has been disabled!"))

/obj/machinery/fat_sucker/AltClick(mob/living/user)
	if(!user.canUseTopic(src, BE_CLOSE))
		return
	if(user == occupant)
		to_chat(user, span_warning("You can't reach the controls from inside!"))
		return
	if(!(obj_flags & EMAGGED) && !allowed(user))
		to_chat(user, span_warning("You lack the required access."))
		return
	free_exit = !free_exit
	to_chat(user, span_notice("Safety hatch [free_exit ? "unlocked" : "locked"]."))

/obj/machinery/fat_sucker/update_icon()
	overlays.Cut()
	if(!state_open)
		if(processing)
			overlays += "[icon_state]_door_on"
			overlays += "[icon_state]_stack"
			overlays += "[icon_state]_smoke"
			overlays += "[icon_state]_green"
		else
			overlays += "[icon_state]_door_off"
			if(occupant)
				if(powered(AREA_USAGE_EQUIP))
					overlays += "[icon_state]_stack"
					overlays += "[icon_state]_yellow"
			else
				overlays += "[icon_state]_red"
	else if(powered(AREA_USAGE_EQUIP))
		overlays += "[icon_state]_red"
	if(panel_open)
		overlays += "[icon_state]_panel"

/obj/machinery/fat_sucker/process(delta_time)
	if(!processing)
		return
	if(!is_operational || !occupant || !iscarbon(occupant))
		open_machine()
		return

	var/mob/living/carbon/C = occupant
	if(C.nutrition <= stop_at)
		open_machine()
		playsound(src, 'sound/machines/microwave/microwave-end.ogg', 100, FALSE)
		return
	C.adjust_nutrition(-bite_size * delta_time)
	nutrients += bite_size * delta_time

	if(next_fact <= 0)
		next_fact = initial(next_fact)
		say(pick(fat_facts))
		playsound(loc, 'sound/machines/chime.ogg', 30, FALSE)
	else
		next_fact--
	use_power(500)

/obj/machinery/fat_sucker/proc/start_extracting()
	if(state_open || !occupant || processing || !is_operational)
		return
	if(iscarbon(occupant))
		var/mob/living/carbon/C = occupant
		if(C.nutrition > start_at)
			processing = TRUE
			soundloop.start()
			update_icon()
			set_light(2, 1, "#ff0000")
		else
			say("Subject not fat enough.")
			playsound(src, 'sound/machines/buzz-sigh.ogg', 40, FALSE)
			overlays += "[icon_state]_red" //throw a red light icon over it, to show that it wont work

/obj/machinery/fat_sucker/proc/stop()
	processing = FALSE
	soundloop.stop()
	set_light(0, 0)

/obj/machinery/fat_sucker/proc/make_meat()
	if(occupant && iscarbon(occupant))
		var/mob/living/carbon/C = occupant
		if(C.type_of_meat)
			// Someone changed component rating high enough so it requires negative amount of nutrients to create a meat slab
			if(nutrient_to_meat <= 0) // Megaddd, please don't crash the server again
				occupant.forceMove(drop_location())
				set_occupant(null)
				explosion(loc, 0, 1, 2, 3, TRUE)
				qdel(src)
				return
			if(nutrients >= nutrient_to_meat * 2)
				C.put_in_hands(new /obj/item/food/cookie, del_on_fail = TRUE)
			while(nutrients >= nutrient_to_meat)
				nutrients -= nutrient_to_meat
				new C.type_of_meat (drop_location())
			while(nutrients >= nutrient_to_meat / 3)
				nutrients -= nutrient_to_meat / 3
				new /obj/item/food/meat/rawcutlet/plain (drop_location())
			nutrients = 0

/obj/machinery/fat_sucker/screwdriver_act(mob/living/user, obj/item/I)
	. = TRUE
	if(..())
		return
	if(occupant)
		to_chat(user, span_warning("[src] is currently occupied!"))
		return
	if(state_open)
		to_chat(user, span_warning("[src] must be closed to [panel_open ? "close" : "open"] its maintenance hatch!"))
		return
	if(default_deconstruction_screwdriver(user, icon_state, icon_state, I))
		update_icon()
		return
	return FALSE

/obj/machinery/fat_sucker/crowbar_act(mob/living/user, obj/item/I)
	if(default_deconstruction_crowbar(I))
		return TRUE

/obj/machinery/fat_sucker/on_emag(mob/user)
	..()
	start_at = 100
	stop_at = 0
	to_chat(user, span_notice("You remove the access restrictions and lower the automatic ejection threshold!"))
