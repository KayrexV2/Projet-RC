scoreboard players add @a[scores={rc=1..},tag=mkfire] rc 1

# beau 
execute as @a[scores={rc=1..},tag=mkfire] positioned ^ ^ ^ run particle dust{color:[0.886,0.957,1.0],scale:1} ~ ~ ~ 0 0 0 0.1 1

# mise en place et vérif dgts

execute as @a[scores={rc=1..},tag=mkfire] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:[mkray]}
execute as @e[type=area_effect_cloud,tag=mkray] at @s unless block ~ ~ ~ #utilitaire:air run particle block{block_state:{Name:cobblestone}} ~ ~ ~ 0.1 0.1 0.1 1 10
execute as @e[type=area_effect_cloud,tag=mkray] at @s unless block ~ ~ ~ #utilitaire:air run scoreboard players set @a[scores={rc=1..},tag=mkfire] rc 35
execute as @e[type=area_effect_cloud,tag=mkray] at @s unless block ~ ~ ~ #utilitaire:air run kill @e[type=area_effect_cloud,tag=mkray]


# dgts
#execute as @e[type=area_effect_cloud,tag=mkray] at @s run execute as @e[tag=mob,dx=0.02,dz=0.02,dy=1.4,limit=1,sort=nearest] run damage @s 19 player_attack by @a[scores={rc=1..},tag=mkfire,limit=1,sort=nearest]
execute as @e[type=area_effect_cloud,tag=mkray] at @s run execute as @e[tag=mob,dx=0.49,dz=0.49,dy=1.4,limit=3,sort=nearest] run tag @s add mktarget_sneak1
execute as @e[tag=mob,tag=mktarget_sneak1] run scoreboard players set @a[scores={rc=1..},tag=mkfire] rc 35
execute as @e[tag=mob,tag=mktarget_sneak1] run kill @e[type=area_effect_cloud,tag=mkray]
execute as @e[tag=mob,tag=mktarget_sneak1,tag=!mktarget_sneak5,tag=!mktarget_sneak3,tag=!mktarget_sneak4,limit=3] run damage @s 25 player_attack by @a[scores={rc=1..},tag=mkfire,limit=1,sort=nearest]
tag @e[tag=mktarget_sneak1] remove mktarget_sneak1

# fin de boucle
execute if score @a[scores={rc=1..,ramdom=1},limit=1,tag=mkfire] rc matches 1..35 positioned ^0.01 ^-0.01 ^0.5 run function weapons:mousket/sneak/mksneak
execute if score @a[scores={rc=1..,ramdom=2},limit=1,tag=mkfire] rc matches 1..35 positioned ^0.01 ^0.01 ^0.5 run function weapons:mousket/sneak/mksneak
execute if score @a[scores={rc=1..,ramdom=3},limit=1,tag=mkfire] rc matches 1..35 positioned ^-0.01 ^0.01 ^0.5 run function weapons:mousket/sneak/mksneak
execute if score @a[scores={rc=1..,ramdom=4},limit=1,tag=mkfire] rc matches 1..35 positioned ^-0.01 ^-0.01 ^0.5 run function weapons:mousket/sneak/mksneak
execute if score @a[scores={rc=1..,ramdom=5},limit=1,tag=mkfire] rc matches 1..35 positioned ^0.01 ^-0.01 ^0.5 run function weapons:mousket/sneak/mksneak
execute if score @a[scores={rc=1..,ramdom=6},limit=1,tag=mkfire] rc matches 1..35 positioned ^-0.01 ^0.00 ^0.5 run function weapons:mousket/sneak/mksneak

scoreboard players set @a[scores={rc=35..},tag=mkfire] rc 1
