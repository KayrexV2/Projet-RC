tag @s remove mkfire
# vérif si peu tirer, puis mise en place tire
tag @s[scores={mana=12..}, tag=!mkcd, tag=!pkcd] add mkfire
scoreboard players set @s clickdroit 0
advancement revoke @s only weapons:mousket


# recul et couts
scoreboard players remove @s[tag=mkfire, tag=!mkcd, scores={mana=12..}] mana 12


scoreboard players set @s[tag=mkfire, tag=!mkcd] rc 1
scoreboard players set @s[tag=mkfire, tag=!mkcd] ramdom 0

tag @e[tag=mktarget_sneak1] remove mktarget_sneak1

# kill areacloud
kill @e[type=area_effect_cloud,tag=mkray]
kill @e[type=area_effect_cloud,tag=mkray2]
kill @e[type=area_effect_cloud,tag=mkray3]
kill @e[type=area_effect_cloud,tag=mkray4]
kill @e[type=area_effect_cloud,tag=mkray5]
kill @e[type=area_effect_cloud,tag=mkray6]


# beau
execute as @s[tag=mkfire, tag=!mkcd] at @s run playsound block.anvil.land ambient @a ~ ~ ~ 0.3 2
execute as @s[tag=mkfire, tag=!mkcd] at @s run playsound entity.dragon_fireball.explode ambient @a ~ ~ ~ 0.7 2
execute as @s[tag=mkfire, tag=!mkcd] at @s run playsound entity.dragon_fireball.explode ambient @a ~ ~ ~ 0.3 0.8

execute as @s[scores={rc=1..,mana=12..},tag=mkfire, tag=!mkcd] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.3 ^0.8 run particle dust{color:[0.886,0.957,1.0],scale:2} ~ ~ ~ 0 0 0 0.01 2 force


execute as @s[tag=mkfire, tag=!mkcd] run scoreboard players set @s mk 1

# skop
execute as @s[tag=mkfire, tag=!mkcd] if predicate utilitaire:sneak run function utilitaire:ramdomizeur3d/r6
execute as @s[tag=mkfire, tag=!mkcd] if predicate utilitaire:sneak at @s anchored eyes positioned ^ ^-0.2 ^0.4 run function weapons:mousket/sneak/mksneak
execute as @s[tag=mkfire, tag=!mkcd] if predicate utilitaire:sneak at @s anchored eyes positioned ^ ^-0.2 ^0.4 run function weapons:mousket/sneak/mksneak3
execute as @s[tag=mkfire, tag=!mkcd] if predicate utilitaire:sneak at @s anchored eyes positioned ^ ^-0.2 ^0.4 run function weapons:mousket/sneak/mksneak4
execute as @s[tag=mkfire, tag=!mkcd] if predicate utilitaire:sneak at @s anchored eyes positioned ^ ^-0.2 ^0.4 run function weapons:mousket/sneak/mksneak5

# noskop
execute as @s[tag=mkfire, tag=!mkcd] unless predicate utilitaire:sneak run function utilitaire:ramdomizeur3d/r6
execute as @s[tag=mkfire, tag=!mkcd] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.4 ^0.4 run function weapons:mousket/noskop/mkraynoskop
execute as @s[tag=mkfire, tag=!mkcd,tag=!mkkak] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.3 ^0.8 run function weapons:mousket/noskop/mkraynoskop2
execute as @s[tag=mkfire, tag=!mkcd,tag=!mkkak] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.3 ^0.8 run function weapons:mousket/noskop/mkraynoskop3
execute as @s[tag=mkfire, tag=!mkcd,tag=!mkkak] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.3 ^0.8 run function weapons:mousket/noskop/mkraynoskop4
execute as @s[tag=mkfire, tag=!mkcd,tag=!mkkak] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.3 ^0.8 run function weapons:mousket/noskop/mkraynoskop5
execute as @s[tag=mkfire, tag=!mkcd,tag=!mkkak] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.3 ^0.8 run function weapons:mousket/noskop/mkraynoskop6


# recul
tp @s[tag=mkfire, tag=!mkcd] ~ ~ ~ ~ ~-8
tag @s remove mkkak

# cd
tag @s[tag=mkfire] add mkcd
execute as @s[tag=mkfire, tag=mkcd] run function weapons:mousket/cd


# fin et reload
scoreboard players set @s[tag=mkfire, tag=mkcd] ramdom 0
scoreboard players set @s[scores={rc=1..},tag=mkfire, tag=mkcd] rc 0



tag @s remove mkfire