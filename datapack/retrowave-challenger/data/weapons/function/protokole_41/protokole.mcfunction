# set up
tag @e[tag=mob] remove pk
tag @e[tag=mob] remove pk1
tag @e[tag=pktarget] remove pktarget
tag @s[tag=!pkcd,tag=pk1use,scores={mana=12..}, nbt=!{Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] add pk1use2

tag @s[tag=!pkcd,tag=!pk1use,scores={mana=12..}, nbt=!{Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] add pk1use

scoreboard players add @s[tag=!pkcd,tag=pk1use] rc 1


# check position et boucle skop
# lancement boucle skop
execute as @s[tag=!pkcd,tag=pk1use,scores={mana=12..}] if predicate utilitaire:sneak at @s anchored eyes positioned ^ ^-0.2 ^0.4 run function weapons:protokole_41/protokoleray
# lancement boucle no skop
execute as @s[tag=!pkcd,tag=pk1use,scores={mana=12..}] unless predicate utilitaire:sneak at @s anchored eyes positioned ^-0.2 ^-0.4 ^0.5 run function weapons:protokole_41/protokoleray





# rendre beau
execute at @s[tag=!pkcd,tag=pk1use,scores={mana=12..}] run playsound entity.generic.explode ambient @a ~ ~ ~ 0.3 1.3
# onde de choc
execute as @s[tag=!pkcd,tag=pk1use,scores={mana=12..}] run schedule function weapons:protokole_41/aurapk1 2t
execute at @s[tag=!pkcd,tag=pk1use,scores={mana=12..}, tag=!pk1use2] run tp @s ~ ~ ~ ~ ~-5
execute at @s[tag=!pkcd,tag=pk1use,scores={mana=12..}, tag=pk1use2] run tp @s ~ ~ ~ ~ ~-20



# cooldown tire 1
scoreboard players set @s[tag=!pkcd,tag=pk1use,tag=!pk1use2] pkcd 0

# cd tire 2
execute as @s[tag=!pkcd,tag=pk1use2] run tag @s add pkcd
# score reset si tire2
scoreboard players set @a[tag=pkcd,scores={pkcd=..49}] pkcd 50

execute as @s[tag=!pkcd] run function weapons:protokole_41/colldown




# cout énergie
execute as @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:bow"}]},tag=!pkcd,scores={mana=12..}] run scoreboard players remove @s mana 12
# fin
scoreboard players set @s clickdroit 0
advancement revoke @s only weapons:protokol
#scoreboard players set @s[tag=!pkcd] rc 0
