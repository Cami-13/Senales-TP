extends TextureButton

func generate_block():
	var block = preload("res://scenes/Blocks/Violet/BlockViolet.tscn").instantiate()
	get_tree().root.add_child(block)
