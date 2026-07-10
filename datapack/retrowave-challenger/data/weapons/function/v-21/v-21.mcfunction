scoreboard players add @s[scores={mana=2..}] rc 1
tag @s[scores={mana=2..}] add v21fire
scoreboard players set @s[scores={mana=2..}] ramdom 0
kill @e[type=area_effect_cloud,tag=v21ray]

execute as @s[scores={mana=2..}] at @s run playsound minecraft:block.beacon.deactivate ambient @a[distance=..10] ~ ~ ~ 0.3 2
#execute as @s[scores={mana=2..}] at @s run playsound minecraft:item.crossbow.shoot ambient @a[distance=..10] ~ ~ ~ 0.5 0.1


#ramdom
execute as @s[scores={mana=2..}] run function utilitaire:ramdomizeur3d/r6

#skop
execute as @s[scores={mana=2..}] if predicate utilitaire:sneak at @s anchored eyes positioned ^ ^-0.3 ^0.4 run function weapons:v-21/v-21ray_skop

# no skop
execute as @s[scores={mana=2..}] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.4 ^1 run function weapons:v-21/v-21ray

tp @s[scores={mana=2..}] ~ ~ ~ ~ ~-0.75


execute as @s[scores={mana=2..}] run scoreboard players remove @s mana 2
scoreboard players set @s[scores={mana=2..}] rc 0
tag @s[tag=v21fire] remove v21fire
scoreboard players set @s[scores={ramdom=1..}] ramdom 0

advancement revoke @s only weapons:v21

