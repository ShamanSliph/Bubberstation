/datum/job/curator
	title = JOB_BLACKSMITH
	description = "Smith wares, Sell them."
	department_head = list(JOB_HEAD_OF_PERSONNEL)
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = SUPERVISOR_HOP
	config_tag = "BLACKSMITH"
	exp_granted_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/curator
	plasmaman_outfit = /datum/outfit/plasmaman/curator

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SRV

	display_order = JOB_DISPLAY_ORDER_BLACKSMITH
	departments_list = list(
		/datum/job_department/service,
		)

	mail_goodies = list(
		/obj/item/book/random = 44,
		/obj/item/book/manual/random = 5,
		/obj/item/book/granter/action/spell/blind/wgw = 1,
	)

	family_heirlooms = list(/obj/item/pen/fountain, /obj/item/storage/dice)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN

	voice_of_god_silence_power = 3
	rpg_title = "Ye olde Smithy"

/datum/outfit/job/curator
	name = "Blacksmith"
	jobtype = /datum/job/blacksmith

	id_trim = /datum/id_trim/job/curator
	uniform = /obj/item/clothing/under/rank/civilian/curator
	backpack_contents = list(
		/obj/item/forging/hammer = 1,
		/obj/item/forging/tongs = 1,
		/obj/item/forging/billow = 1,
	)
	belt = /obj/item/modular_computer/pda/curator
	ears = /obj/item/radio/headset/headset_srv
	shoes = /obj/item/clothing/shoes/laceup




/datum/outfit/job/curator/post_equip(mob/living/carbon/human/translator, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	translator.grant_all_languages(source=LANGUAGE_CURATOR)
	translator.remove_blocked_language(GLOB.all_languages, source=LANGUAGE_ALL)
