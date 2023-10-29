@tool
class_name PrintPropertiesExample
extends Node

@export var resource:Resource
@export var node:Node
@export var shader:Shader

@export var print_resource:bool = false : set = _print_resource
func _print_resource(_bool) -> void:
	PrintUtil.print_properties(resource.get_property_list())

@export var print_node:bool = false : set = _print_node
func _print_node(_bool) -> void:
	PrintUtil.print_properties(node.get_property_list())

@export var print_shader:bool = false : set = _print_shader
func _print_shader(_bool) -> void:
	PrintUtil.print_properties(shader.get_shader_uniform_list())
