scoreboard players add @a[scores={rc=1..},tag=mkfire] rc 1

# beau 
execute as @a[scores={rc=1..},tag=mkfire] positioned ^ ^ ^ run particle dust{color:[0.886,0.957,1.0],scale:1} ~ ~ ~ 0 0 0 0.1 11

# mise en place et vérif dgts

execute as @a[scores={rc=1..},tag=mkfire] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:[mkray4]}
execute as @e[type=area_effect_cloud,tag=mkray4] at @s unless block ~ ~ ~ #utilitaire:air run particle block{block_state:{Name:cobblestone}} ~ ~ ~ 0.1 0.1 0.1 1 10
execute as @e[type=area_effect_cloud,tag=mkray4] at @s unless block ~ ~ ~ #utilitaire:air run scoreboard players set @a[scores={rc=1..},tag=mkfire] rc 35
execute as @e[type=area_effect_cloud,tag=mkray4] at @s unless block ~ ~ ~ #utilitaire:air run kill @e[type=area_effect_cloud,tag=mkray4]


# dgts
#execute as @e[type=area_effect_cloud,tag=mkray4] at @s run execute as @e[tag=mob,dx=0.02,dz=0.02,dy=1.4,limit=1,sort=nearest] run damage @s 3.5 player_attack by @a[scores={rc=1..},tag=mkfire,limit=1,sort=nearest]
#execute as @e[type=area_effect_cloud,tag=mkray4] at @s run execute as @e[tag=mob,dx=0.02,dz=0.02,dy=1.4,limit=1,sort=nearest] run scoreboard players set @a[scores={rc=1..},tag=mkfire] rc 35
#execute as @e[type=area_effect_cloud,tag=mkray4] at @s run execute as @e[tag=mob,dx=0.02,dz=0.02,dy=1.4,limit=1,sort=nearest] run kill @e[type=area_effect_cloud,tag=mkray4]

execute as @e[type=area_effect_cloud,tag=mkray4] at @s run execute as @e[tag=mob,dx=0.02,dz=0.02,dy=1.4,limit=1,sort=nearest] run tag @s add mktarget4
execute as @e[tag=mob,tag=mktarget4] run scoreboard players set @a[scores={rc=1..},tag=mkfire] rc 35
execute as @e[tag=mob,tag=mktarget4] run kill @e[type=area_effect_cloud,tag=mkray4]
execute as @e[tag=mob,tag=mktarget4] run damage @s 2.5 utilitaire:bypass by @a[scores={rc=1..},tag=mkfire,limit=1,sort=nearest]
tag @e[tag=mktarget4] remove mktarget4

# fin de boucle
execute if score @a[scores={rc=1..,ramdom=4},limit=1,tag=mkfire] rc matches 1..35 positioned ^0.09 ^-0.05 ^0.5 run function weapons:mousket/noskop/mkraynoskop4
execute if score @a[scores={rc=1..,ramdom=5},limit=1,tag=mkfire] rc matches 1..35 positioned ^0.04 ^0.01 ^0.5 run function weapons:mousket/noskop/mkraynoskop4
execute if score @a[scores={rc=1..,ramdom=6},limit=1,tag=mkfire] rc matches 1..35 positioned ^-0.04 ^0.05 ^0.5 run function weapons:mousket/noskop/mkraynoskop4
execute if score @a[scores={rc=1..,ramdom=1},limit=1,tag=mkfire] rc matches 1..35 positioned ^-0.05 ^-0.01 ^0.5 run function weapons:mousket/noskop/mkraynoskop4
execute if score @a[scores={rc=1..,ramdom=2},limit=1,tag=mkfire] rc matches 1..35 positioned ^0.08 ^0.05 ^0.5 run function weapons:mousket/noskop/mkraynoskop4
execute if score @a[scores={rc=1..,ramdom=3},limit=1,tag=mkfire] rc matches 1..35 positioned ^-0.01 ^0.00 ^0.5 run function weapons:mousket/noskop/mkraynoskop4

scoreboard players set @a[scores={rc=35..},tag=mkfire] rc 1