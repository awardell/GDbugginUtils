@tool
class_name PrintUtil
extends Node

## Prints properties retrieved from Shader.get_shader_uniform_list
## or from Object.get_property_list in human-readable JSON
static func print_properties(plist) -> void:
	print("[")
	for p in plist:
		var type = p["type"]
		var hint = p["hint"]
		var usage = p["usage"]
		var pad_len = ceili(log(max(type, hint, usage)) / log(10)) + 1
		var type_value_str = (str(type) + ",").rpad(pad_len, " ")
		var hint_value_str = (str(hint) + ",").rpad(pad_len, " ")
		var usg_value_str = (str(usage) + ",").rpad(pad_len, " ")
		var type_name = EnumStrings.VariantType[type]
		var hint_name = EnumStrings.PropertyHint[hint]
		var usg_flags := EnumStrings.get_property_usage_flags(usage)
		var usg_names := "[\"" if !usg_flags.is_empty() else "["
		for flag in usg_flags:
			usg_names += flag + "\", \""
		usg_names = usg_names.trim_suffix(", \"") + "]"

		print("{")
		print("    \"name\"        : { \"value\": \"", p["name"], "\" },")
		print("    \"class_name\"  : { \"value\": \"", p["class_name"], "\" },")
		print("    \"type\"        : { \"value\": ", type_value_str, " \"VariantType\": \"", type_name, "\" },")
		print("    \"usage\"       : { \"value\": ", usg_value_str, " \"PropertyUsageFlags\": ", usg_names, " },")
		print("    \"hint\"        : { \"value\": ", hint_value_str, " \"PropertyHint\": \"", hint_name, "\" },")
		print("    \"hint_string\" : { \"value\": \"", p["hint_string"], "\" },")
		print("},")
	print("]")
