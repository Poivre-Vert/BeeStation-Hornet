/*
 * Contains:
 *		Lasertag
 *		Costume
 *		Misc
 */

/*
 * Lasertag
 */
/obj/item/clothing/suit/bluetag
	name = "blue laser tag armor"
	desc = "A piece of plastic armor. It has sensors that react to red light." //Lasers are concentrated light
	icon_state = "bluetag"
	item_state = "bluetag"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST
	allowed = list (/obj/item/gun/energy/laser/bluetag)
	resistance_flags = NONE

/obj/item/clothing/suit/redtag
	name = "red laser tag armor"
	desc = "A piece of plastic armor. It has sensors that react to blue light."
	icon_state = "redtag"
	item_state = "redtag"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST
	allowed = list (/obj/item/gun/energy/laser/redtag)
	resistance_flags = NONE

// Aristocrat Coats

/obj/item/clothing/suit/aristo_orange
	name = "orange aristocrat coat"
	desc = "A fancy coat made of silk. This one is orange."
	icon_state = "aristo_orange"
	item_state = "aristo_orange"

/obj/item/clothing/suit/aristo_red
	name = "red aristocrat coat"
	desc = "A fancy coat made of silk. This one is red."
	icon_state = "aristo_red"
	item_state = "aristo_red"

/obj/item/clothing/suit/aristo_brown
	name = "brown aristocrat coat"
	desc = "A fancy coat made of silk. This one is brown."
	icon_state = "aristo_brown"
	item_state = "aristo_brown"

/obj/item/clothing/suit/aristo_blue
	name = "blue aristocrat coat"
	desc = "A fancy coat made of silk. This one is blue."
	icon_state = "aristo_blue"
	item_state = "aristo_blue"

/*
 * Costume
 */
/obj/item/clothing/suit/hooded/flashsuit
	name = "flashy costume"
	desc = "What did you expect?"
	icon_state = "flashsuit"
	item_state = "armor"
	body_parts_covered = CHEST|GROIN
	hoodtype = /obj/item/clothing/head/hooded/flashsuit

/obj/item/clothing/suit/hooded/hastur
	name = "\improper Hastur's robe"
	desc = "Robes not meant to be worn by man."
	icon_state = "hastur"
	item_state = "hastur"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	hoodtype = /obj/item/clothing/head/hooded/hasturhood

/obj/item/clothing/head/hooded/flashsuit
	name = "flash button"
	desc = "You will learn to fear the flash."
	icon_state = "flashsuit"
	body_parts_covered = HEAD
	flags_inv = HIDEHAIR|HIDEEARS|HIDEFACIALHAIR|HIDEFACE|HIDEMASK

/obj/item/clothing/suit/pirate
	name = "pirate coat"
	desc = "Yarr."
	icon_state = "pirate"
	item_state = "pirate"
	allowed = list(/obj/item/melee/transforming/energy/sword/pirate, /obj/item/clothing/glasses/eyepatch, /obj/item/reagent_containers/food/drinks/bottle/rum)

/obj/item/clothing/suit/pirate/captain
	name = "pirate captain coat"
	desc = "Yarr."
	icon_state = "hgpirate"
	item_state = "hgpirate"


/obj/item/clothing/suit/cyborg_suit
	name = "cyborg suit"
	desc = "Suit for a cyborg costume."
	icon_state = "death"
	item_state = "death"
	flags_1 = CONDUCT_1
	fire_resist = T0C+5200
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT


/obj/item/clothing/suit/justice
	name = "justice suit"
	desc = "this pretty much looks ridiculous" //Needs no fixing
	icon_state = "justice"
	item_state = "justice"
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT


/obj/item/clothing/suit/judgerobe
	name = "judge's robe"
	desc = "This robe commands authority."
	icon_state = "judge"
	item_state = "judge"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	allowed = list(/obj/item/storage/fancy/cigarettes, /obj/item/stack/spacecash)
	flags_inv = HIDEJUMPSUIT


/obj/item/clothing/suit/apron/overalls
	name = "coveralls"
	desc = "A set of denim overalls."
	icon_state = "overalls"
	item_state = "overalls"
	body_parts_covered = CHEST|GROIN|LEGS

/obj/item/clothing/suit/apron/purple_bartender
	name = "purple bartender apron"
	desc = "A fancy purple apron for a stylish person."
	icon_state = "purplebartenderapron"
	item_state = "purplebartenderapron"
	body_parts_covered = CHEST|GROIN|LEGS

/obj/item/clothing/suit/syndicatefake
	name = "black and red space suit replica"
	icon_state = "syndicate-black-red"
	item_state = "syndicate-black-red"
	desc = "A plastic replica of the Syndicate space suit. You'll look just like a real murderous Syndicate agent in this! This is a toy, it is not made for use in space!"
	w_class = WEIGHT_CLASS_NORMAL
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	resistance_flags = NONE

/obj/item/clothing/suit/hastur
	name = "\improper Hastur's robe"
	desc = "Robes not meant to be worn by man."
	icon_state = "hastur"
	item_state = "hastur"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT


/obj/item/clothing/suit/imperium_monk
	name = "\improper Imperium monk suit"
	desc = "Have YOU killed a xeno today?"
	icon_state = "imperium_monk"
	item_state = "imperium_monk"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	flags_inv = HIDESHOES|HIDEJUMPSUIT
	allowed = list(/obj/item/storage/book/bible, /obj/item/nullrod, /obj/item/reagent_containers/food/drinks/bottle/holywater, /obj/item/storage/fancy/candle_box, /obj/item/candle, /obj/item/tank/internals/emergency_oxygen)


/obj/item/clothing/suit/chickensuit
	name = "chicken suit"
	desc = "A suit made long ago by the ancient empire KFC."
	icon_state = "chickensuit"
	item_state = "chickensuit"
	body_parts_covered = CHEST|ARMS|GROIN|LEGS|FEET
	flags_inv = HIDESHOES|HIDEJUMPSUIT


/obj/item/clothing/suit/monkeysuit
	name = "monkey suit"
	desc = "A suit that looks like a primate."
	icon_state = "monkeysuit"
	item_state = "monkeysuit"
	body_parts_covered = CHEST|ARMS|GROIN|LEGS|FEET|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT

/obj/item/clothing/suit/toggle/owlwings
	name = "owl cloak"
	desc = "A soft brown cloak made of synthetic feathers. Soft to the touch, stylish, and a 2 meter wing span that will drive the ladies mad."
	icon_state = "owl_wings"
	item_state = "owl_wings"
	togglename = "wings"
	body_parts_covered = ARMS|CHEST
	actions_types = list(/datum/action/item_action/toggle_wings)

/obj/item/clothing/suit/toggle/owlwings/Initialize(mapload)
	. = ..()
	allowed = GLOB.security_vest_allowed

/obj/item/clothing/suit/toggle/owlwings/griffinwings
	name = "griffon cloak"
	desc = "A plush white cloak made of synthetic feathers. Soft to the touch, stylish, and a 2 meter wing span that will drive your captives mad."
	icon_state = "griffin_wings"
	item_state = "griffin_wings"

/obj/item/clothing/suit/cardborg
	name = "cardborg suit"
	desc = "An ordinary cardboard box with holes cut in the sides."
	icon_state = "cardborg"
	item_state = "cardborg"
	body_parts_covered = CHEST|GROIN
	flags_inv = HIDEJUMPSUIT
	dog_fashion = /datum/dog_fashion/back

/obj/item/clothing/suit/cardborg/equipped(mob/living/user, slot)
	..()
	if(slot == ITEM_SLOT_OCLOTHING)
		disguise(user)

/obj/item/clothing/suit/cardborg/dropped(mob/living/user)
	..()
	user.remove_alt_appearance("standard_borg_disguise")

/obj/item/clothing/suit/cardborg/proc/disguise(mob/living/carbon/human/H, obj/item/clothing/head/cardborg/borghead)
	if(istype(H))
		if(!borghead)
			borghead = H.head
		if(istype(borghead, /obj/item/clothing/head/cardborg)) //why is this done this way? because equipped() is called BEFORE THE ITEM IS IN THE SLOT WHYYYY
			var/image/I = image(icon = 'icons/mob/robots.dmi' , icon_state = "robot", loc = H)
			I.override = 1
			I.add_overlay(mutable_appearance('icons/mob/robots.dmi', "robot_e")) //gotta look realistic
			add_alt_appearance(/datum/atom_hud/alternate_appearance/basic/silicons, "standard_borg_disguise", I) //you look like a robot to robots! (including yourself because you're totally a robot)


/obj/item/clothing/suit/snowman
	name = "snowman outfit"
	desc = "Two white spheres covered in white glitter. 'Tis the season."
	icon_state = "snowman"
	item_state = "snowman"
	body_parts_covered = CHEST|GROIN
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/poncho
	name = "poncho"
	desc = "Your classic, non-racist poncho."
	icon_state = "classicponcho"
	item_state = "classicponcho"

/obj/item/clothing/suit/poncho/green
	name = "green poncho"
	desc = "Your classic, non-racist poncho. This one is green."
	icon_state = "greenponcho"
	item_state = "greenponcho"

/obj/item/clothing/suit/poncho/red
	name = "red poncho"
	desc = "Your classic, non-racist poncho. This one is red."
	icon_state = "redponcho"
	item_state = "redponcho"

/obj/item/clothing/suit/poncho/ponchoshame
	name = "poncho of shame"
	desc = "Forced to live on your shameful acting as a fake Mexican, you and your poncho have grown inseparable. Literally."
	icon_state = "ponchoshame"
	item_state = "ponchoshame"

/obj/item/clothing/suit/poncho/ponchoshame/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, SHAMEBRERO_TRAIT)

/obj/item/clothing/suit/whitedress
	name = "white dress"
	desc = "A fancy white dress."
	icon_state = "white_dress"
	item_state = "w_suit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET
	flags_inv = HIDEJUMPSUIT|HIDESHOES

/obj/item/clothing/suit/hooded/carp_costume
	name = "carp costume"
	desc = "A costume made from 'synthetic' carp scales, it smells."
	icon_state = "carp_casual"
	item_state = "labcoat"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT	//Space carp like space, so you should too
	allowed = list(/obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/pneumatic_cannon/speargun)
	hoodtype = /obj/item/clothing/head/hooded/carp_hood

/obj/item/clothing/head/hooded/carp_hood
	name = "carp hood"
	desc = "A hood attached to a carp costume."
	icon_state = "carp_casual"
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEHAIR|HIDEEARS

/obj/item/clothing/head/hooded/hasturhood
	name = "hastur's hood"
	desc = "It's <i>unspeakably</i> stylish."
	icon_state = "hasturhood"
	body_parts_covered = HEAD
	flags_inv = HIDEHAIR
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/hooded/carp_hood/equipped(mob/living/carbon/human/user, slot)
	..()
	if (slot == ITEM_SLOT_HEAD)
		user.faction |= "carp"

/obj/item/clothing/head/hooded/carp_hood/dropped(mob/living/carbon/human/user)
	..()
	if (user.head == src)
		user.faction -= "carp"

/obj/item/clothing/suit/hooded/ian_costume	//It's Ian, rub his bell- oh god what happened to his inside parts?
	name = "corgi costume"
	desc = "A costume that looks like someone made a human-like corgi, it won't guarantee belly rubs."
	icon_state = "ian"
	item_state = "labcoat"
	body_parts_covered = CHEST|GROIN|ARMS
	//cold_protection = CHEST|GROIN|ARMS
	//min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	allowed = list()
	hoodtype = /obj/item/clothing/head/hooded/ian_hood
	dog_fashion = /datum/dog_fashion/back

/obj/item/clothing/head/hooded/ian_hood
	name = "corgi hood"
	desc = "A hood that looks just like a corgi's head, it won't guarantee dog biscuits."
	icon_state = "ian"
	body_parts_covered = HEAD
	//cold_protection = HEAD
	//min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEHAIR|HIDEEARS

/obj/item/clothing/suit/hooded/bee_costume // It's Hip!
	name = "bee costume"
	desc = "Bee the true Queen!"
	icon_state = "bee"
	item_state = "labcoat"
	body_parts_covered = CHEST|GROIN|ARMS
	clothing_flags = THICKMATERIAL
	hoodtype = /obj/item/clothing/head/hooded/bee_hood

/obj/item/clothing/head/hooded/bee_hood
	name = "bee hood"
	desc = "A hood attached to a bee costume."
	icon_state = "bee"
	body_parts_covered = HEAD
	clothing_flags = THICKMATERIAL | SNUG_FIT
	flags_inv = HIDEHAIR|HIDEEARS
	dynamic_hair_suffix = ""

/obj/item/clothing/suit/hooded/bee_costume/syndie
	name = "BLF costume"
	armor = list("melee" = 20, "bullet" = 20, "laser" = 20,"energy" = 40, "bomb" = 0, "bio" = 60, "rad" = 0, "fire" = 0, "acid" = 50, "stamina" = 40)
	hoodtype = /obj/item/clothing/head/hooded/bee_hood/syndie

/obj/item/clothing/head/hooded/bee_hood/syndie
	armor = list("melee" = 20, "bullet" = 20, "laser" = 20,"energy" = 40, "bomb" = 0, "bio" = 60, "rad" = 0, "fire" = 0, "acid" = 50, "stamina" = 40)

/obj/item/clothing/suit/hooded/bloated_human	//OH MY GOD WHAT HAVE YOU DONE!?!?!?
	name = "bloated human suit"
	desc = "A horribly bloated suit made from human skins."
	icon_state = "lingspacesuit"
	item_state = "labcoat"
	body_parts_covered = CHEST|GROIN|ARMS
	allowed = list()
	actions_types = list(/datum/action/item_action/toggle_human_head)
	hoodtype = /obj/item/clothing/head/hooded/human_head


/obj/item/clothing/head/hooded/human_head
	name = "bloated human head"
	desc = "A horribly bloated and mismatched human head."
	icon_state = "lingspacehelmet"
	body_parts_covered = HEAD
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/suit/security/officer/russian
	name = "\improper Russian officer's jacket"
	desc = "This jacket is for those special occasions when a russian officer isn't required to wear their armor."
	icon_state = "officertanjacket"
	item_state = "officertanjacket"
	body_parts_covered = CHEST|ARMS

/////////////////
//DONATOR ITEMS//
/////////////////

/obj/item/clothing/suit/delinquent
	name = "deliquent jacket"
	desc = "Yare yare daze."
	icon_state = "jocoat"

/obj/item/clothing/suit/madsci
	name = "mad scientist labcoat"
	desc = "El psy congroo."
	icon_state = "madsci"

/obj/item/clothing/suit/hooded/renault_costume
	name = "renault costume"
	desc = "The cutest pair of pajamas you've ever seen."
	icon_state = "renault_suit"
	hoodtype = /obj/item/clothing/head/hooded/renault_hood

/obj/item/clothing/head/hooded/renault_hood
	name = "renault hoodie"
	desc = "An adorable hoodie vaguely resembling renault."
	icon_state = "renault_hoodie"
	flags_inv = HIDEEARS

/obj/item/clothing/suit/retro_jacket
	name = "retro jacket"
	desc = "Do you like hurting other people?"
	icon_state = "retro_jacket"

/*
 * Misc
 */

/obj/item/clothing/suit/straight_jacket
	name = "straight jacket"
	desc = "A suit that completely restrains the wearer. Manufactured by Antyphun Corp." //Straight jacket is antifun
	icon_state = "straight_jacket"
	item_state = "straight_jacket"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	equip_delay_self = 50
	strip_delay = 60
	breakouttime = 3000
	pocket_storage_component_path = FALSE

/obj/item/clothing/suit/ianshirt
	name = "worn shirt"
	desc = "A worn out, curiously comfortable t-shirt with a picture of Ian. You wouldn't go so far as to say it feels like being hugged when you wear it, but it's pretty close. Good for sleeping in."
	icon_state = "ianshirt"
	item_state = "ianshirt"

/obj/item/clothing/suit/nerdshirt
	name = "gamer shirt"
	desc = "A baggy shirt with vintage game character Phanic the Weasel. Why would anyone wear this?"
	icon_state = "nerdshirt"
	item_state = "nerdshirt"

/obj/item/clothing/suit/vapeshirt //wearing this is asking to get beat.
	name = "Vape Naysh shirt"
	desc = "A cheap white T-shirt with a big tacky \"VN\" on the front, Why would you wear this unironically?"
	icon_state = "vapeshirt"
	item_state = "vapeshirt"

/obj/item/clothing/suit/striped_sweater
	name = "striped sweater"
	desc = "Reminds you of someone, but you just can't put your finger on it..."
	icon_state = "waldo_shirt"
	item_state = "waldo_shirt"

/obj/item/clothing/suit/jacket
	name = "bomber jacket"
	desc = "Aviators not included."
	icon_state = "bomberjacket"
	item_state = "brownjsuit"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter, /obj/item/radio)
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT

/obj/item/clothing/suit/jacket/leather
	name = "leather jacket"
	desc = "Pompadour not included."
	icon_state = "leatherjacket"
	item_state = "hostrench"
	resistance_flags = NONE
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter, /obj/item/gun/ballistic/automatic/pistol, /obj/item/gun/ballistic/revolver, /obj/item/gun/ballistic/revolver/detective, /obj/item/radio)

/obj/item/clothing/suit/jacket/leather/overcoat
	name = "leather overcoat"
	desc = "That's a damn fine coat."
	icon_state = "leathercoat"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	cold_protection = CHEST|GROIN|ARMS|LEGS

/obj/item/clothing/suit/jacket/puffer
	name = "puffer jacket"
	desc = "A thick jacket with a rubbery, water-resistant shell."
	icon_state = "pufferjacket"
	item_state = "hostrench"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 50, "rad" = 0, "fire" = 0, "acid" = 0, "stamina" = 0)

/obj/item/clothing/suit/jacket/puffer/vest
	name = "puffer vest"
	desc = "A thick vest with a rubbery, water-resistant shell."
	icon_state = "puffervest"
	item_state = "armor"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 30, "rad" = 0, "fire" = 0, "acid" = 0, "stamina" = 0)

/obj/item/clothing/suit/jacket/miljacket
	name = "military jacket"
	desc = "A canvas jacket styled after classical American military garb. Feels sturdy, yet comfortable."
	icon_state = "militaryjacket"
	item_state = "militaryjacket"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter, /obj/item/gun/ballistic/automatic/pistol, /obj/item/gun/ballistic/revolver, /obj/item/radio)

/obj/item/clothing/suit/jacket/letterman
	name = "letterman jacket"
	desc = "A classic brown letterman jacket. Looks pretty hot and heavy."
	icon_state = "letterman"
	item_state = "letterman"

/obj/item/clothing/suit/jacket/letterman_red
	name = "red letterman jacket"
	desc = "A letterman jacket in a sick red color. Radical."
	icon_state = "letterman_red"
	item_state = "letterman_red"

/obj/item/clothing/suit/jacket/letterman_syndie
	name = "blood-red letterman jacket"
	desc = "Oddly, this jacket seems to have a large S on the back..."
	icon_state = "letterman_s"
	item_state = "letterman_s"

/obj/item/clothing/suit/jacket/letterman_nanotrasen
	name = "blue letterman jacket"
	desc = "A blue letterman jacket with a proud Nanotrasen N on the back. The tag says that it was made in Space China."
	icon_state = "letterman_n"
	item_state = "letterman_n"

/obj/item/clothing/suit/dracula
	name = "dracula coat"
	desc = "Looks like this belongs in a very old movie set."
	icon_state = "draculacoat"
	item_state = "draculacoat"

/obj/item/clothing/suit/drfreeze_coat
	name = "doctor freeze's labcoat"
	desc = "A labcoat imbued with the power of features and freezes."
	icon_state = "drfreeze_coat"
	item_state = "drfreeze_coat"

/obj/item/clothing/suit/gothcoat
	name = "gothic coat"
	desc = "Perfect for those who want stalk in a corner of a bar."
	icon_state = "gothcoat"
	item_state = "gothcoat"

/obj/item/clothing/suit/xenos
	name = "xenos suit"
	desc = "A suit made out of chitinous alien hide."
	icon_state = "xenos"
	item_state = "xenos_helm"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	allowed = list(/obj/item/clothing/mask/facehugger/toy)

/obj/item/clothing/suit/nemes
	name = "pharoah tunic"
	desc = "Lavish space tomb not included."
	icon_state = "pharoah"
	icon_state = "pharoah"
	body_parts_covered = CHEST|GROIN

/obj/item/clothing/suit/caution
	name = "wet floor sign"
	desc = "Caution! Wet Floor!"
	icon_state = "caution"
	lefthand_file = 'icons/mob/inhands/equipment/custodial_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/custodial_righthand.dmi'
	custom_price = 10
	force = 1
	throwforce = 3
	throw_speed = 2
	throw_range = 5
	w_class = WEIGHT_CLASS_SMALL
	body_parts_covered = CHEST|GROIN
	attack_verb = list("warned", "cautioned", "smashed")
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "stamina" = 0)



// WINTER COATS

/obj/item/clothing/suit/hooded/wintercoat
	name = "winter coat"
	desc = "A heavy jacket made from 'synthetic' animal furs."
	icon_state = "coatwinter"
	item_state = "coatwinter"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0, "stamina" = 0)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)

/obj/item/clothing/head/hooded/winterhood
	name = "winter hood"
	desc = "A hood attached to a heavy winter jacket."
	icon_state = "winterhood"
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEHAIR|HIDEEARS

/obj/item/clothing/suit/hooded/wintercoat/captain
	name = "captain's winter coat"
	icon_state = "coatcaptain"
	item_state = "coatcaptain"
	armor = list("melee" = 25, "bullet" = 30, "laser" = 30, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 50, "stamina" = 20)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/captain

/obj/item/clothing/suit/hooded/wintercoat/captain/Initialize(mapload)
	. = ..()
	allowed = GLOB.security_wintercoat_allowed

/obj/item/clothing/head/hooded/winterhood/captain
	icon_state = "winterhood_captain"

/obj/item/clothing/suit/hooded/wintercoat/security
	name = "security winter coat"
	icon_state = "coatsecurity"
	item_state = "coatsecurity"
	armor = list("melee" = 25, "bullet" = 15, "laser" = 30, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 45, "stamina" = 20)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/security

/obj/item/clothing/suit/hooded/wintercoat/security/Initialize(mapload)
	. = ..()
	allowed = GLOB.security_wintercoat_allowed

/obj/item/clothing/head/hooded/winterhood/security
	icon_state = "winterhood_security"

/obj/item/clothing/suit/hooded/wintercoat/medical
	name = "medical winter coat"
	icon_state = "coatmedical"
	item_state = "coatmedical"
	allowed = list(/obj/item/analyzer, /obj/item/sensor_device, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/police/telescopic, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 50, "rad" = 0, "fire" = 0, "acid" = 45, "stamina" = 0)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/medical

/obj/item/clothing/head/hooded/winterhood/medical
	icon_state = "winterhood_medical"

/obj/item/clothing/suit/hooded/wintercoat/science
	name = "science winter coat"
	icon_state = "coatscience"
	item_state = "coatscience"
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/police/telescopic, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "stamina" = 0)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/science

/obj/item/clothing/head/hooded/winterhood/science
	icon_state = "winterhood_science"

/obj/item/clothing/suit/hooded/wintercoat/engineering
	name = "engineering winter coat"
	icon_state = "coatengineer"
	item_state = "coatengineer"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 30, "acid" = 45, "stamina" = 0)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/t_scanner, /obj/item/construction/rcd, /obj/item/pipe_dispenser, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/engineering

/obj/item/clothing/head/hooded/winterhood/engineering
	icon_state = "winterhood_engineer"

/obj/item/clothing/suit/hooded/wintercoat/engineering/atmos
	name = "atmospherics winter coat"
	icon_state = "coatatmos"
	item_state = "coatatmos"
	hoodtype = /obj/item/clothing/head/hooded/winterhood/engineering/atmos

/obj/item/clothing/head/hooded/winterhood/engineering/atmos
	icon_state = "winterhood_atmos"

/obj/item/clothing/suit/hooded/wintercoat/hydro
	name = "hydroponics winter coat"
	icon_state = "coathydro"
	item_state = "coathydro"
	allowed = list(/obj/item/reagent_containers/spray/plantbgone, /obj/item/plant_analyzer, /obj/item/seeds, /obj/item/reagent_containers/glass/bottle, /obj/item/cultivator, /obj/item/reagent_containers/spray/pestspray, /obj/item/hatchet, /obj/item/storage/bag/plants, /obj/item/toy, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/hydro

/obj/item/clothing/head/hooded/winterhood/hydro
	icon_state = "winterhood_hydro"

/obj/item/clothing/suit/hooded/wintercoat/cargo
	name = "cargo winter coat"
	icon_state = "coatcargo"
	item_state = "coatcargo"
	hoodtype = /obj/item/clothing/head/hooded/winterhood/cargo

/obj/item/clothing/head/hooded/winterhood/cargo
	icon_state = "winterhood_cargo"

/obj/item/clothing/suit/hooded/wintercoat/miner
	name = "mining winter coat"
	icon_state = "coatminer"
	item_state = "coatminer"
	allowed = list(/obj/item/pickaxe, /obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "stamina" = 0)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/miner

/obj/item/clothing/head/hooded/winterhood/miner
	icon_state = "winterhood_miner"

//Old winter coats

/obj/item/clothing/suit/hooded/wintercoat/old
	name = "nostalgic winter coat"
	desc = "A well-worn heavy jacket made from 'synthetic' animal furs."
	icon_state = "old_coatwinter"

/obj/item/clothing/head/hooded/winterhood/old
	name = "winter hood"
	desc = "An old hood attached to a well-worn heavy winter jacket."
	icon_state = "old_winterhood"

/obj/item/clothing/suit/hooded/wintercoat/security/old
	name = "nostalgic security winter coat"
	icon_state = "old_coatsecurity"
	hoodtype = /obj/item/clothing/head/hooded/winterhood/security/old

/obj/item/clothing/suit/hooded/wintercoat/security/old/Initialize(mapload)
	. = ..()
	allowed = GLOB.security_wintercoat_allowed

/obj/item/clothing/head/hooded/winterhood/security/old
	icon_state = "old_winterhood_security"

/obj/item/clothing/suit/hooded/wintercoat/medical/old
	name = "nostalgic medical winter coat"
	icon_state = "old_coatmedical"
	hoodtype = /obj/item/clothing/head/hooded/winterhood/medical/old

/obj/item/clothing/head/hooded/winterhood/medical/old
	icon_state = "old_winterhood_medical"

/obj/item/clothing/suit/hooded/wintercoat/science/old
	name = "nostalgic science winter coat"
	icon_state = "old_coatscience"
	hoodtype = /obj/item/clothing/head/hooded/winterhood/science/old

/obj/item/clothing/head/hooded/winterhood/science/old
	icon_state = "old_winterhood_science"

/obj/item/clothing/suit/hooded/wintercoat/engineering/old
	name = "nostalgic engineering winter coat"
	icon_state = "old_coatengineer"
	hoodtype = /obj/item/clothing/head/hooded/winterhood/engineering/old

/obj/item/clothing/head/hooded/winterhood/engineering/old
	icon_state = "old_winterhood_engineer"

/obj/item/clothing/suit/hooded/wintercoat/engineering/atmos/old
	name = "nostalgic atmospherics winter coat"
	icon_state = "old_coatatmos"
	hoodtype = /obj/item/clothing/head/hooded/winterhood/engineering/atmos/old

/obj/item/clothing/head/hooded/winterhood/engineering/atmos/old
	icon_state = "old_winterhood_atmos"

/obj/item/clothing/suit/hooded/wintercoat/hydro/old
	name = "nostalgic hydroponics winter coat"
	icon_state = "old_coathydro"
	hoodtype = /obj/item/clothing/head/hooded/winterhood/hydro/old

/obj/item/clothing/head/hooded/winterhood/hydro/old
	icon_state = "old_winterhood_hydro"

//end of winter coats

/obj/item/clothing/suit/spookyghost
	name = "spooky ghost"
	desc = "This is obviously just a bedsheet, but maybe try it on?"
	icon_state = "bedsheet"
	user_vars_to_edit = list("name" = "Spooky Ghost", "real_name" = "Spooky Ghost" , "incorporeal_move" = INCORPOREAL_MOVE_BASIC, "appearance_flags" = KEEP_TOGETHER|TILE_BOUND, "alpha" = 150)
	alternate_worn_layer = ABOVE_BODY_FRONT_LAYER //so the bedsheet goes over everything but fire

/obj/item/clothing/suit/bronze
	name = "bronze suit"
	desc = "A big and clanky suit made of bronze that offers no protection and looks very unfashionable. Nice."
	icon = 'icons/obj/clothing/clockwork_garb.dmi'
	icon_state = "clockwork_cuirass_old"
	armor = list("melee" = 5, "bullet" = 0, "laser" = -5, "energy" = 0, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 20, "stamina" = 30)

/obj/item/clothing/suit/ghost_sheet
	name = "ghost sheet"
	desc = "The hands float by themselves, so it's extra spooky."
	icon_state = "ghost_sheet"
	item_state = "ghost_sheet"
	throwforce = 0
	throw_speed = 1
	throw_range = 2
	w_class = WEIGHT_CLASS_TINY
	flags_inv = HIDEGLOVES|HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	alternate_worn_layer = UNDER_HEAD_LAYER

/obj/item/clothing/under/costume/joker
	name = "comedian suit"
	desc = "The worst part of having a mental illness is people expect you to behave as if you don't."
	icon_state = "joker"
	item_state = "joker"
	can_adjust = FALSE

/obj/item/clothing/suit/joker
	name = "comedian coat"
	desc = "I mean, don't you have to be funny to be a comedian?"
	icon_state = "joker_coat"
	item_state = "joker_coat"

/obj/item/clothing/suit/toggle/softshell
	name = "softshell jacket"
	desc = "A Nanotrasen-branded softshell jacket."
	icon_state = "softshell"
	item_state = "softshell"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/t_scanner, /obj/item/radio)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 30, "rad" = 0, "fire" = 0, "acid" = 0, "stamina" = 0)
	togglename = "zipper"
	body_parts_covered = CHEST|GROIN|ARMS

//extra hoodies!

/obj/item/clothing/suit/hooded/hoodie
	name = "white hoodie"
	desc = "A casual hoodie to keep you warm and comfy."
	icon_state = "hoodie"
	item_state = "hoodie"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0, "stamina" = 0)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	hoodtype = /obj/item/clothing/head/hooded/hoodie

/obj/item/clothing/head/hooded/hoodie
	name = "white hoodie hood"
	desc = "A hood attached to your hoodie, simple as."
	icon_state = "hoodie"
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEHAIR|HIDEEARS

/obj/item/clothing/suit/hooded/hoodie/blue
	name = "blue hoodie"
	color = "#52aecc"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/blue

/obj/item/clothing/head/hooded/hoodie/blue
	name = "blue hoodie hood"
	color = "#52aecc"

/obj/item/clothing/suit/hooded/hoodie/green
	name = "green hoodie"
	color = "#9ed63a"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/green

/obj/item/clothing/head/hooded/hoodie/green
	name = "green hoodie hood"
	color = "#9ed63a"

/obj/item/clothing/suit/hooded/hoodie/orange
	name = "orange hoodie"
	color = "#ff8c19"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/orange

/obj/item/clothing/head/hooded/hoodie/orange
	name = "orange hoodie hood"
	color = "#ff8c19"

/obj/item/clothing/suit/hooded/hoodie/pink
	name = "pink hoodie"
	desc = "<i>fabulous</i> feels."
	color = "#ffa69b"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/pink

/obj/item/clothing/head/hooded/hoodie/pink
	name = "pink hoodie hood"
	color = "#ffa69b"

/obj/item/clothing/suit/hooded/hoodie/red
	name = "red hoodie"
	color = "#c42822"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/red

/obj/item/clothing/head/hooded/hoodie/red
	name = "red hoodie hood"
	color = "#c42822"

/obj/item/clothing/suit/hooded/hoodie/black
	name = "black hoodie"
	color = "#2e2e2e"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/black

/obj/item/clothing/head/hooded/hoodie/black
	name = "black hoodie hood"
	color = "#2e2e2e"

/obj/item/clothing/suit/hooded/hoodie/yellow
	name = "yellow hoodie"
	color = "#ffe14d"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/yellow

/obj/item/clothing/head/hooded/hoodie/yellow
	name = "yellow hoodie hood"
	color = "#ffe14d"

/obj/item/clothing/suit/hooded/hoodie/darkblue
	name = "dark blue hoodie"
	color = "#3285ba"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/darkblue

/obj/item/clothing/head/hooded/hoodie/darkblue
	name = "dark blue hoodie hood"
	color = "#3285ba"

/obj/item/clothing/suit/hooded/hoodie/teal
	name = "teal hoodie"
	color = "#77f3b7"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/teal

/obj/item/clothing/head/hooded/hoodie/teal
	name = "teal hoodie hood"
	color = "#77f3b7"

/obj/item/clothing/suit/hooded/hoodie/purple
	name = "purple hoodie"
	color = "#73479c"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/purple

/obj/item/clothing/head/hooded/hoodie/purple
	name = "purple hoodie hood"
	color = "#73479c"

/obj/item/clothing/suit/hooded/hoodie/brown
	name = "brown hoodie"
	color = "#a17229"
	hoodtype = /obj/item/clothing/head/hooded/hoodie/brown

/obj/item/clothing/head/hooded/hoodie/brown
	name = "brown hoodie"
	color = "#a17229"

/obj/item/clothing/suit/hooded/hoodie/durathread
	name = "durathread hoodie"
	desc = "A hoodie made from durathread, its resilient fibres provide some protection to the wearer."
	color = "#8291a1"
	armor = list("melee" = 15, "laser" = 10, "fire" = 40, "acid" = 10, "bomb" = 5, "stamina" = 30)
	hoodtype = /obj/item/clothing/head/hooded/hoodie/durathread

/obj/item/clothing/head/hooded/hoodie/durathread
	name = "durathread hoodie hood"
	desc = "A duratread hood attached to your hoodie, robust as."
	armor = list("melee" = 5, "laser" = 5, "fire" = 20, "acid" = 5, "bomb" = 5, "stamina" = 15)
	color = "#8291a1"
