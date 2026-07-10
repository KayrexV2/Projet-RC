# dark vador
execute as @s run playsound entity.player.hurt_freeze master @s ~ ~ ~ 10 1.5
execute as @s at @s run function utilitaire:killdetect/sound_de_base

execute as @s run scoreboard players operation @s DVkill += @s kd
execute as @s run scoreboard players set @s kd 0


