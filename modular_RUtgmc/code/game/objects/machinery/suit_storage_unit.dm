/obj/machinery/suit_storage_unit/ex_act(severity)
	if(prob(severity / 3))
		if(prob(50))
			dump_everything()
		qdel(src)
