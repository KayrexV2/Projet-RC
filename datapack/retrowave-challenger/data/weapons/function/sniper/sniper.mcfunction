# set up
scoreboard players set @s[scores={mana=30..},tag=!snipcd] rc 1
scoreboard players set @s[scores={mana=30..},tag=!snipcd] ramdom 0

tag @s[scores={mana=30..},tag=!snipcd] add snipfire

# son
execute as @s[scores={mana=30..},tag=snipfire,tag=!snipcd] at @s run playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 0.7 0.5
execute as @s[scores={mana=30..},tag=snipfire,tag=!snipcd] at @s run playsound entity.dragon_fireball.explode ambient @a ~ ~ ~ 0.3 0.8



# check position
# skop
execute as @s[scores={mana=30..},tag=snipfire,tag=!snipcd] if predicate utilitaire:sneak at @s anchored eyes positioned ^ ^-0.2 ^0.4 run function weapons:sniper/sniperraysneak
# no skop
execute as @s[scores={mana=30..},tag=snipfire,tag=!snipcd] unless predicate utilitaire:sneak run function utilitaire:ramdomizeur3d/r6
execute as @s[scores={mana=30..},tag=snipfire,tag=!snipcd] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.4 ^-0.25 ^1 run function weapons:sniper/sniperraynoskop

# beau
execute if predicate utilitaire:sneak at @s run tp @s[scores={mana=30..},tag=snipfire,tag=!snipcd] ~ ~ ~ ~ ~-10
execute unless predicate utilitaire:sneak at @s run tp @s[scores={mana=30..},tag=snipfire,tag=!snipcd] ~ ~ ~ ~ ~-17





# cooldawn

# fin 
tag @e[tag=mob,tag=sniptarget] remove sniptarget
tag @e[tag=mob,tag=sniptarget_sneak] remove sniptarget_sneak
# lancement cd
scoreboard players set @s[tag=snipfire,tag=!snipcd] pkcd 0
tag @s[tag=snipfire,tag=!snipcd] add snipcd
execute as @s[tag=snipcd, scores={pkcd=0}] run function weapons:sniper/cd
scoreboard players set @s[tag=snipfire] ramdom 0


# enlever energie et tag
execute as @s[tag=snipfire] run scoreboard players remove @s mana 30
tag @s remove snipfire
#fin advancement
scoreboard players set @s clickdroit 0
advancement revoke @s only weapons:sniper