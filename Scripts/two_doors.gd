extends Node3D


signal scenestart
var _a := false


func _on_area_3d_body_entered(body):
	if body is Player:
		Player.stanley = true


func _on_area_3d_body_exited(body):
	if body is Player:
		Player.stanley = false


func _on_area_3d_2_body_entered(body):
	if body is Player:
		if !_a:
			_a = true
			scenestart.emit()
			if Player.speedrunTime < (9.879485*60):
				Player.speedran = true
				$AnimationPlayer.play("new_animation_2")
				$"../finalCutscenes/AnimationPlayer".play("speedsetup")
			else:
				Player.speedran = false
				$AnimationPlayer.play("new_animation")
