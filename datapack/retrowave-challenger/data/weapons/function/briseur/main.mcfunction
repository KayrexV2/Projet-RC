## reset
scoreboard players set @s clickdroit 0
advancement revoke @s only weapons:briseur


## set up
tag @s add brfire
scoreboard players set @s rc 1

## tire
# tire no skop

execute as @s[tag=brfire] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.4 ^1 run function weapons:briseur/br_raynoskop



## lancement tire balle

# summon item dysplay
execute as @s[tag=brfire] at @s anchored eyes positioned ^-0.4 ^-0.25 ^1 run summon item_display ~ ~ ~ {billboard:"center",Tags:["br_traceur","tempbr_traceur"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:white_dye",count:1}}
execute as @s[tag=brfire] at @s run scoreboard players add @e[type=item_display, tag=br_traceur, tag=tempbr_traceur, sort=nearest, distance=..5] rc 1
execute as @s[tag=brfire] at @s run tag @e[type=item_display, tag=br_traceur, tag=tempbr_traceur, scores={rc=1}, sort=nearest, distance=..5] remove tempbr_traceur
# function traceur
execute at @s[tag=brfire] run function weapons:briseur/br_balle

# fin
tag @s[tag=brfire] remove brfire
