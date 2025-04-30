extends Node2D

@onready var red_generator: TextureButton = $RedGenerator
@onready var violet_generator: TextureButton = $VioletGenerator


const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass

	var red_generator = get_node("RedGenerator")
	var violet_generator = get_node("VioletGenerator")
	
	red_generator.connect("button_down", Callable(self, "count_new_instance"))
	violet_generator.connect("button_down", Callable(self, "count_new_instance"))

func _on_red_generator_button_down() -> void:
	red_generator.generate_block()


func _on_violet_generator_button_down() -> void:
	violet_generator.generate_block()

func count_new_instance():
	instancesCount += 1
	$CountLabel.text = str(instancesCount)
