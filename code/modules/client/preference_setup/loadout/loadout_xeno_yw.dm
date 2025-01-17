/datum/gear/suit/zaddat
	sort_category = "Xenowear"
	whitelisted = SPECIES_ZADDAT

/datum/gear/suit/zaddat/security
	display_name = "Zaddat security shroud"
	description = "A zaddat shroud with a layer of armor, for security officers"
	sort_category = "Xenowear"
	whitelisted = SPECIES_ZADDAT
	path = /obj/item/clothing/suit/space/void/zaddat/security
	allowed_roles = list("Head of Security","Detective","Warden","Security Officer")

/datum/gear/suit/zaddat/engineer
	display_name = "Zaddat engineer shroud"
	description =  "A zaddat shroud with a extra layer of rad-shielding, for engineers"
	path = /obj/item/clothing/suit/space/void/zaddat/engineer
	sort_category = "Xenowear"
	whitelisted = SPECIES_ZADDAT
	allowed_roles = list("Chief Engineer", "Atmospheric Technician", "Engineer")

/datum/gear/uniform/kigyarcasual
	display_name = "Unarmored Bodysuit (Kig-Yar)"
	path = /obj/item/clothing/under/kigyar/noarmor
	sort_category = "Xenowear"
	whitelisted = SPECIES_KIGYAR_YW
/datum/gear/uniform/kigyartvaoancasual
	display_name = "Unarmored Bodysuit (T'Vaoan)"
	path = /obj/item/clothing/under/kigyar/noarmor
	sort_category = "Xenowear"
	whitelisted = SPECIES_TVAOAN_KIGYAR_YW

/datum/gear/shoes/kigyar
	display_name = "magclaws (Kig-Yar)"
	path = /obj/item/clothing/shoes/magboots/ranger_kigyar/noarmor
	sort_category = "Xenowear"
	whitelisted = SPECIES_KIGYAR_YW

/datum/gear/shoes/kigyartvaoan
	display_name = "magclaws (T'Vaoan)"
	path = /obj/item/clothing/shoes/magboots/ranger_kigyar/noarmor
	sort_category = "Xenowear"
	whitelisted = SPECIES_TVAOAN_KIGYAR_YW

/* Commented out as a lot of these were added upstream if anything is missing add it to this file
/datum/gear/suit/hood
	display_name = "hooded cloak selection (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/standard
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/hood/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/hooded/teshari/standard))
		var/obj/item/clothing/suit/storage/teshari/cloak/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/beltcloak
	display_name = "belted cloak selection (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/beltcloak/standard
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/beltcloak/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/beltcloak/standard))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/standard/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/uniform/beltcloakcolor/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/suit/cloakcolor
	display_name = "belted cloak, recolorable (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/beltcloak/standard/white_grey
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/dept/beltcloak/
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/dept/beltcloak/wrdn
	display_name = "warden belted cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/beltcloak/jobs/wrdn
	allowed_roles = list("Head of Security","Warden")

/datum/gear/suit/dept/beltcloak/hos
	display_name = "Chief of Security belted cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/beltcloak/jobs/hos
	allowed_roles = list("Head of Security")

/datum/gear/suit/dept/beltcloak/jani
	display_name = "janitor belted cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/beltcloak/jobs/jani
	allowed_roles = list("Janitor")

/datum/gear/suit/dept/beltcloak/rd
	display_name = "research director belted cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/beltcloak/jobs/rd
	allowed_roles = list("Research Director")

/datum/gear/suit/dept/cloak/command/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/command,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/command))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/cargo/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/cargo,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cargo))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/mining/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/mining,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/mining))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/qm/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/qm,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/qm))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/security/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/sec,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/sec))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/service/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/service,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/service))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/ce/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/ce,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/ce))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/engineer/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/beltcloak/jobs/eningeer,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/eningeer))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/atmos/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/atmos,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/atmos))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/research/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/sci,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/sci))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/robo/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/robo,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/robo))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/cmo/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/cmo,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cmo))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/medical/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/medical,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/medical))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/chemistry/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/chemistry,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/chemistry))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/virology/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/viro,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/viro))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/paramedic/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/para,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/para))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/cloak/iaa/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/jobs/iaa,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/iaa))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/suit/dept/beltcloak/rd/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/rd,/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/rd/black))
		var/obj/item/clothing/suit/storage/teshari/beltcloak/jobs/rd/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cloaks))

/datum/gear/uniform/harness_white
	display_name = "white gear harness (Full Body Prosthetic, Diona)"
	path = /obj/item/clothing/under/harness_white
	sort_category = "Xenowear"
	*/
