scoreboard players add @e[type=area_effect_cloud,tag=bkeg] bkeg 1

execute as @e[type=area_effect_cloud,tag=bkeg] at @s run scoreboard players add @a[limit=1,scores={mana=..126},distance=..1] mana 4
execute as @e[type=area_effect_cloud,tag=bkeg] at @s run scoreboard players set @a[limit=1,scores={mana=121..},distance=..1] mana 120
execute as @e[type=area_effect_cloud,tag=bkeg] at @s run scoreboard players add @a[limit=1,distance=..1] bkeg 1
execute as @e[type=area_effect_cloud,tag=bkeg] at @s run execute as @a[limit=1,distance=1] run kill @e[type=area_effect_cloud,tag=bkeg]

execute as @e[type=area_effect_cloud,tag=bkeg,scores={bkeg=7}] at @s run particle dust{color:[0.65,0.65,1.0],scale:1.5} ~ ~1 ~ -0.1 -0.1 -0.1 0.01 3 normal
execute as @e[type=area_effect_cloud,tag=bkeg,scores={bkeg=14}] at @s run particle dust{color:[0.65,0.65,1.0],scale:1.5} ~ ~1.2 ~ -0.1 -0.1 -0.1 0.01 3 normal
execute as @e[type=area_effect_cloud,tag=bkeg,scores={bkeg=21}] at @s run particle dust{color:[0.65,0.65,1.0],scale:1.5} ~ ~1.4 ~ -0.1 -0.1 -0.1 0.01 3 normal

execute as @e[type=area_effect_cloud,tag=bkeg,scores={bkeg=21}] at @s run execute as @a[limit=1,distance=..1] run effect give @s nausea 10 3

execute as @e[type=area_effect_cloud,tag=bkeg,scores={bkeg=21}] run kill @s

execute as @e[type=area_effect_cloud,tag=bkeg] run schedule function pouvoir:berserker/bkeg 3t