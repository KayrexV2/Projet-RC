execute as @s[scores={mana=..119}] at @s run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 5 1
execute as @s[scores={mana=..119}] at @s run playsound minecraft:block.amethyst_cluster.break ambient @a ~ ~ ~ 10 0.001
execute as @s[scores={mana=..119}] at @s run playsound minecraft:block.amethyst_block.resonate ambient @a ~ ~ ~ 10 0.001
execute as @s[scores={mana=..119}] run item replace entity @s weapon.mainhand with minecraft:air

# particules
execute as @s[scores={mana=..119}] run particle dust{color:[0.65,0.65,1.0],scale:1} ^-0.5 ^1.2 ^0.5 0.1 0.1 0.1 0.001 30 force

# fin
execute as @s[scores={mana=..119}] run scoreboard players add @s mana 30
execute as @s[scores={mana=120..}] run scoreboard players set @s mana 120
scoreboard players set @s clickdroit 0
advancement revoke @s only utilitaire:crystalenergetique_niv1
