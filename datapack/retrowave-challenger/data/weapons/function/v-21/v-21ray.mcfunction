# set up
scoreboard players add @a[scores={rc=1..},tag=v21fire] rc 1

execute as @a[scores={rc=1..},tag=v21fire] positioned ^ ^ ^ run particle minecraft:dust{color:[0.616,0.851,0.996],scale:1} ~ ~ ~ 0 0 0 0.1 1

# mise en place et vérif dgts

execute as @a[scores={rc=1..},tag=v21fire] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:[v21ray]}
execute as @e[type=area_effect_cloud,tag=v21ray] at @s unless block ~ ~ ~ #utilitaire:air run particle block{block_state:{Name:cobblestone}} ~ ~ ~ 0.1 0.1 0.1 1 10
execute as @e[type=area_effect_cloud,tag=v21ray] at @s unless block ~ ~ ~ #utilitaire:air run scoreboard players set @a[scores={rc=1..},tag=v21fire] rc 0
execute as @e[type=area_effect_cloud,tag=v21ray] at @s unless block ~ ~ ~ #utilitaire:air run kill @e[type=area_effect_cloud,tag=v21ray]


# dgts
execute as @e[type=area_effect_cloud,tag=v21ray] at @s run execute as @e[tag=mob,dx=0.01,dz=0.01,dy=1.4,limit=1,sort=nearest] run damage @s 6 utilitaire:bypass by @a[scores={rc=1..},tag=v21fire,limit=1,sort=nearest]

execute as @e[type=area_effect_cloud,tag=v21ray] at @s run execute as @e[tag=mob,dx=0.01,dz=0.01,dy=1.4,limit=1,sort=nearest] run scoreboard players set @a[scores={rc=1..},tag=v21fire] rc 0

execute as @e[type=area_effect_cloud,tag=v21ray] at @s run execute as @e[tag=mob,dx=0.01,dz=0.01,dy=1.4,limit=1,sort=nearest] run kill @e[type=area_effect_cloud,tag=v21ray]


# fin et boucle
execute if score @a[scores={rc=1..,ramdom=1},limit=1,tag=v21fire] rc matches 1..30 positioned ^0.06 ^-0.01 ^0.5 run function weapons:v-21/v-21ray
execute if score @a[scores={rc=1..,ramdom=2},limit=1,tag=v21fire] rc matches 1..30 positioned ^-0.02 ^0.02 ^0.5 run function weapons:v-21/v-21ray
execute if score @a[scores={rc=1..,ramdom=3},limit=1,tag=v21fire] rc matches 1..30 positioned ^0.05 ^0.04 ^0.5 run function weapons:v-21/v-21ray
execute if score @a[scores={rc=1..,ramdom=4},limit=1,tag=v21fire] rc matches 1..30 positioned ^-0.06 ^0.04 ^0.5 run function weapons:v-21/v-21ray
execute if score @a[scores={rc=1..,ramdom=5},limit=1,tag=v21fire] rc matches 1..30 positioned ^0.02 ^-0.015 ^0.5 run function weapons:v-21/v-21ray
execute if score @a[scores={rc=1..,ramdom=6},limit=1,tag=v21fire] rc matches 1..30 positioned ^0.05 ^-0.05 ^0.5 run function weapons:v-21/v-21ray

execute as @a[scores={rc=30..},limit=1,tag=v21fire] at @s run kill @e[distance=..10,type=area_effect_cloud,tag=v21ray]

scoreboard players set @a[scores={rc=30..},tag=v21fire] rc 0