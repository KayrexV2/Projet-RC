# set up
scoreboard players set @s hs 3

execute as @s[scores={mana=18..}] run tag @s add hsuse
item replace entity @s[tag=hsuse] weapon.mainhand with air

# invoque arrow
execute as @s[tag=hsuse] run function weapons:hypersword/hs-fleche with entity @s


# invoc ridemarker
#execute as @e[type=arrow,sort=nearest,tag=hsarrow,nbt=!{Passengers:[{id:"minecraft:marker",Tags:["hsarrow_rider"]}]},nbt={inGround:0b}] at @s run summon marker ~ ~ ~ {Tags:["hsarrow_rider"]}
#execute as @s[tag=hsuse] at @s run ride @e[type=marker,tag=hsarrow_rider,limit=1] mount @e[type=arrow,tag=hsarrow,limit=1,sort=nearest,nbt={inGround:0b}]

# fin
scoreboard players set @s[scores={mana=..17}] hs 1

scoreboard players set @s clickdroit 0
advancement revoke @s only weapons:hs_lancer