
# sniper detect 
execute as @s at @s run function utilitaire:killdetect/sound_de_base
execute as @s run scoreboard players operation @s sniperkill += @s kd

#execute as @s run scoreboard players operation @s Monstre_aneantie += @s kd
execute as @s run scoreboard players set @s kd 0
