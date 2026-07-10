
# stockage scores
execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

# mvmt
tp @s ^ ^ ^0.1

execute store result score @s motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s motion_y2 run data get entity @s Pos[1] 1000
execute store result score @s motion_z2 run data get entity @s Pos[2] 1000

# opération pour connaître le vecteur vitesse (par soustraction de x2-x1),
#puis l'appliquer aux vecteur vitesse après avoir divisé le résultats de
#l'opération par 5000 pour regagner la précision 

execute store result entity @s[type=arrow,tag=hsarrow] Motion[0] double 0.015 run scoreboard players operation @s motion_x2 -= @s motion_x1 
execute store result entity @s[type=arrow,tag=hsarrow] Motion[1] double 0.015 run scoreboard players operation @s motion_y2 -= @s motion_y1 
execute store result entity @s[type=arrow,tag=hsarrow] Motion[2] double 0.015 run scoreboard players operation @s motion_z2 -= @s motion_z1 

# tag de fin
tag @s add motionadd
