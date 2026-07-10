# set up
scoreboard players add @a[scores={rc=1..},tag=!pkcd,tag=pk1use] rc 1

# beau
execute as @s[scores={rc=2},tag=!pkcd,tag=pk1use] positioned ^ ^ ^ run summon item_display ^-0.22 ^-0.10 ^1 { Tags:[pk1aura], item:{id:"minecraft:rabbit_foot",count:1b, components:{"minecraft:custom_model_data":{strings:["1"]},"minecraft:custom_data":{pk1aura:1b}}},item_display:"gui",billboard:"center",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[2.7f,2.7f,2.7f],right_rotation:[0f,0f,0f,1f]}}
execute as @s[scores={rc=3},tag=!pkcd,tag=pk1use] positioned ^ ^ ^ run summon item_display ^-0.22 ^-0.10 ^0.7 { Tags:[pk1aura2] ,item:{id:"minecraft:rabbit_foot",count:1b, components:{"minecraft:custom_model_data":{strings:["1"]},"minecraft:custom_data":{pk1aura2:1b}}},item_display:"gui",billboard:"center",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[2.7f,2.7f,2.7f],right_rotation:[0f,0f,0f,1f]}}
execute as @s[scores={rc=4},tag=!pkcd,tag=pk1use] positioned ^ ^ ^ run summon item_display ^-0.22 ^-0.10 ^0.7 { Tags:[pk1aura3] ,item:{id:"minecraft:rabbit_foot",count:1b, components:{"minecraft:custom_model_data":{strings:["1"]},"minecraft:custom_data":{pk1aura3:1b}}},item_display:"gui",billboard:"center",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[2.7f,2.7f,2.7f],right_rotation:[0f,0f,0f,1f]}}
execute as @s[scores={rc=5},tag=!pkcd,tag=pk1use] positioned ^ ^ ^ run summon item_display ^-0.22 ^-0.10 ^0.7 { Tags:[pk1aura4] ,item:{id:"minecraft:rabbit_foot",count:1b, components:{"minecraft:custom_model_data":{strings:["1"]},"minecraft:custom_data":{pk1aura4:1b}}},item_display:"gui",billboard:"center",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[2.7f,2.7f,2.7f],right_rotation:[0f,0f,0f,1f]}}

# area cloud effect
execute as @s[scores={rc=2},tag=!pkcd,tag=pk1use] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Duration:10, Tags:[pk],}
execute as @s[scores={rc=3..},tag=!pkcd,tag=pk1use] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Duration:10, Tags:[pk1],}

# detecttion dans le murs
execute as @e[type=area_effect_cloud,tag=pk1] at @s unless block ~ ~ ~ #utilitaire:air run particle block{block_state:{Name:cobblestone}} ~ ~ ~ 0.3 0.3 0.3 1 20
execute as @e[type=area_effect_cloud,tag=pk1] at @s unless block ~ ~ ~ #utilitaire:air run tag @s add pkmure

# dgts
execute as @e[type=area_effect_cloud,tag=pk,tag=!pkmure] at @s run execute as @e[tag=mob,dx=2,dz=2,dy=2] run tag @s add pk
execute as @e[tag=mob,tag=pk] run damage @s 30 player_attack by @a[scores={rc=1..},tag=!pkcd,tag=pk1use,limit=1,sort=nearest]

execute as @e[type=area_effect_cloud,tag=pk1,tag=!pkmure] at @s run execute as @e[tag=mob,dx=2.1,dz=2.1,dy=1.4,tag=!pk,tag=!pktarget] run tag @s add pk1
execute as @e[tag=mob,tag=pk1] run damage @s 10 player_attack by @a[scores={rc=1..},tag=!pkcd,tag=pk1use,limit=1,sort=nearest]
tag @e[tag=mob,tag=pk1] add pktarget

# vecteur vitesse
execute at @s[scores={rc=1..},tag=!pkcd,tag=pk1use] run execute as @e[tag=pk1,dx=7,dy=7,dz=7] run data modify entity @s Motion set value [0.3,0.25,0.3]
execute at @s[scores={rc=1..},tag=!pkcd,tag=pk1use] run execute as @e[tag=pk1,dx=-7,dy=7,dz=-7] run data modify entity @s Motion set value [-0.3,0.25,-0.3]
execute at @s[scores={rc=1..},tag=!pkcd,tag=pk1use] run execute as @e[tag=pk1,dx=-7,dy=7,dz=7] run data modify entity @s Motion set value [-0.3,0.25,0.3]
execute at @s[scores={rc=1..},tag=!pkcd,tag=pk1use] run execute as @e[tag=pk1,dx=7,dy=7,dz=-7] run data modify entity @s Motion set value [0.3,0.25,-0.3]

execute at @s[scores={rc=1..},tag=!pkcd,tag=pk1use] run execute as @e[tag=pk,dx=7,dy=7,dz=7] run data modify entity @s Motion set value [0.4,0.35,0.4]
execute at @s[scores={rc=1..},tag=!pkcd,tag=pk1use] run execute as @e[tag=pk,dx=-7,dy=7,dz=-7] run data modify entity @s Motion set value [-0.4,0.35,-0.4]
execute at @s[scores={rc=1..},tag=!pkcd,tag=pk1use] run execute as @e[tag=pk,dx=-7,dy=7,dz=7] run data modify entity @s Motion set value [-0.4,0.35,0.4]
execute at @s[scores={rc=1..},tag=!pkcd,tag=pk1use] run execute as @e[tag=pk,dx=7,dy=7,dz=-7] run data modify entity @s Motion set value [0.4,0.35,-0.4]

# remove tagg
tag @e[tag=mob,tag=pk] remove pk
tag @e[tag=mob,tag=pk1] remove pk1


# boucle
execute as @s[scores={rc=1..7},tag=pk1use] positioned ^ ^0.01 ^0.5 run function weapons:protokole_41/protokoleray
execute as @s[scores={rc=7},tag=pk1use] at @s run kill @e[distance=..10,type=area_effect_cloud,tag=pk1]
execute as @s[scores={rc=7},tag=pk1use] at @s run kill @e[distance=..10,type=area_effect_cloud,tag=pk]
execute as @s[scores={rc=7},tag=pk1use] run tag @e[tag=pktarget] remove pktarget

scoreboard players set @s[scores={rc=7..},tag=!pkcd,tag=pk1use] rc 0