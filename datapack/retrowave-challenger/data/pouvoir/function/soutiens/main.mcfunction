execute as @s[scores={st=1..}] run item replace entity @s weapon with air

# neutralisé projectile et ia
execute as @s[scores={st=1..}] at @s run execute as @e[type=arrow,tag=!arrowplayer,nbt=!{inGround:1b},distance=4..6] at @s run particle dust{color:[0.486,0.776,1.0],scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
execute as @s[scores={st=1..}] at @s run kill @e[type=arrow,tag=!arrowplayer,nbt=!{inGround:1b},distance=4..6]
execute as @s[scores={st=1..}] at @s run execute as @e[tag=mob,distance=..7.5] run tag @s add sttarget
execute as @e[tag=mob,tag=sttarget] run data merge entity @s {NoAI:1b}

# summon armor stand
execute as @s[scores={st=1..}] at @s anchored eyes positioned ^-0.4 ^-0.3 ^0.8 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:[stbalise,markerstbalise],Passengers:[{id:"minecraft:item_display",Tags:[stbalise_beau],item:{id:"minecraft:warped_fungus_on_a_stick",count:1b,components:{"minecraft:custom_model_data":{strings:["10001"]},"minecraft:custom_name":'"stbalise_beau"'}},item_display:"gui",transformation:{translation:[0f,-1.78f,0.4f],left_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],right_rotation:[0f,0f,0f,1f]}}]}

function pouvoir:soutiens/boucle

# fin
scoreboard players set @s clickdroit 0
advancement revoke @s only pouvoir:st

