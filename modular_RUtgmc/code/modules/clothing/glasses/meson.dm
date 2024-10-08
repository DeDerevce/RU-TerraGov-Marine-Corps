/obj/item/clothing/glasses/meson/yautja
	name = "bio-mask x-ray"
	desc = "A vision overlay generated by the Bio-Mask. Used to see through objects."
	icon = 'modular_RUtgmc/icons/obj/hunter/pred_gear.dmi'
	icon_state = "visor_meson"
	item_state = "visor_meson"
	item_icons = list(
		slot_glasses_str = 'modular_RUtgmc/icons/mob/hunter/pred_gear.dmi'
	)
	darkness_view = 12
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_INVISIBLE
	vision_flags = SEE_TURFS
	flags_inventory = COVEREYES
	actions_types = null

/obj/item/clothing/glasses/meson/yautja/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, TRAIT_GENERIC)

/obj/item/clothing/glasses/meson/yautja/dropped(mob/living/carbon/human/user)
	if(istype(user) && user.glasses == src)
		user.clear_fullscreen("pred_meson", 5)
	..()

/obj/item/clothing/glasses/meson/yautja/equipped(mob/living/carbon/human/user, slot)
	if(slot == SLOT_GLASSES)
		user.overlay_fullscreen("pred_meson", /atom/movable/screen/fullscreen/machine/pred/meson)
	..()

/obj/item/clothing/glasses/meson/yautja/unequipped(mob/living/carbon/human/user, slot)
	if(slot == SLOT_GLASSES)
		user.clear_fullscreen("pred_meson", 5)
	..()
