scoreboard players add @a[scores={rc=1..},tag=snipfire] rc 1

# beau 
execute as @a[scores={rc=1..},tag=snipfire] positioned ^ ^ ^ run particle minecraft:dust{color:[0.937,0.678,1.0],scale:2.5} ~ ~ ~ 0 0 0 0.00001 1

# mise en place et vérif dgts

execute as @a[scores={rc=1..},tag=snipfire] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Duration:10, Tags:[snipray]}
execute as @e[type=area_effect_cloud,tag=snipray] at @s unless block ~ ~ ~ #utilitaire:air run particle block{block_state:{Name:cobblestone}} ~ ~ ~ 0.3 0.3 0.3 1 30
execute as @e[type=area_effect_cloud,tag=snipray] at @s unless block ~ ~ ~ #utilitaire:air run scoreboard players set @a[scores={rc=1..},tag=snipfire] rc 0
execute as @e[type=area_effect_cloud,tag=snipray] at @s unless block ~ ~ ~ #utilitaire:air run kill @e[type=area_effect_cloud,tag=snipray]


# dgts
execute as @e[type=area_effect_cloud,tag=snipray] at @s run execute as @e[tag=mob,dx=0.02,dz=0.02,dy=1.4,sort=nearest,tag=!sniptarget_sneak] run damage @s 40 player_attack by @a[scores={rc=1..},tag=snipfire,limit=1,sort=nearest]
execute as @e[type=area_effect_cloud,tag=snipray] at @s run execute as @e[tag=mob,dx=0.02,dz=0.02,dy=1.4,sort=nearest] run tag @s add sniptarget_sneak

# fin de boucle
execute if score @a[scores={rc=1..},limit=1,tag=snipfire] rc matches 1..120 positioned ^ ^ ^0.5 run function weapons:sniper/sniperraysneak

execute as @a[scores={rc=120..},tag=snipfire] run tag @e[tag=mob,tag=sniptarget_sneak] remove sniptarget_sneak 

scoreboard players set @a[scores={rc=120..},tag=snipfire] rc 0