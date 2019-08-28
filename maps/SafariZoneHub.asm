SafariZoneHub_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 9 ; warp events
	warp_event 16, 27, SAFARI_ZONE_FUCHSIA_GATE, 1
	warp_event 17, 27, SAFARI_ZONE_FUCHSIA_GATE, 2
	warp_event 31, 12, SAFARI_ZONE_EAST, 1
	warp_event 31, 13, SAFARI_ZONE_EAST, 2
	warp_event  2, 12, SAFARI_ZONE_WEST, 5
	warp_event  2, 13, SAFARI_ZONE_WEST, 6
	warp_event 16,  2, SAFARI_ZONE_NORTH, 5
	warp_event 17,  2, SAFARI_ZONE_NORTH, 6
	warp_event 19, 21, SAFARI_ZONE_HUB_REST_HOUSE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 16, 24, SIGNPOST_JUMPTEXT, SafariZoneHubAreaSignText
	bg_event 20, 22, SIGNPOST_JUMPTEXT, SafariZoneHubRestHouseSignText

	db 3 ; object events
	object_event 26,  6, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 5, GenericTrainerBug_maniacKai, -1
	itemball_event 15, 12, NUGGET, 1, EVENT_SAFARI_ZONE_HUB_NUGGET
	itemball_event  8, 21, ULTRA_BALL, 1, EVENT_SAFARI_ZONE_HUB_ULTRA_BALL

GenericTrainerBug_maniacKai:
	generictrainer BUG_MANIAC, KAI, EVENT_BEAT_BUG_MANIAC_KAI, Bug_maniacKaiSeenText, Bug_maniacKaiBeatenText

	text "Venonat is so"
	line "similar to"
	cont "Butterfree!"

	para "Their weight,"
	line "their eyes,"
	cont "their abilities…"

	para "Evolution is"
	line "weird sometimes."
	done

Bug_maniacKaiSeenText:
	text "My Venonat evolved"
	line "into a Venomoth?!"
	done

Bug_maniacKaiBeatenText:
	text "I thought it would"
	line "for sure evolve"
	cont "into Butterfree!"
	done

SafariZoneHubAreaSignText:
	text "Safari Zone"
	line "Center Area"
	done

SafariZoneHubRestHouseSignText:
	text "Rest House"
	done
