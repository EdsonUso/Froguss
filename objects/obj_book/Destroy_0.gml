if (variable_instance_exists(self, "magic_spell")) {
	obj_frogy.grant_spells(magic_spell)
	return
}

show_debug_message("Eita, fui destruido, mas não tenho magia!");