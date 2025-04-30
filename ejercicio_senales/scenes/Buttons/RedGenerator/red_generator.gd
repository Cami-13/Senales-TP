extends TextureButton

func generate_block():
	var block = preload("res://scenes/Blocks/Red/BlockRed.tscn").instantiate()
	get_tree().root.add_child(block)
