# v21 detect 
execute as @s at @s run function utilitaire:killdetect/sound_de_base
#execute as @s run scoreboard players operation @s Monstre_aneantie += @s kd
execute as @s run scoreboard players operation @s v21kill += @s kd
execute as @s run scoreboard players set @s kd 0
