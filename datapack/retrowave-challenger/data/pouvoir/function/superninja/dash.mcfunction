
# set up
#function utilitaire:motion_projectiles/boucle
execute as @s[scores={mana=18..}] run tag @s add hsuse

# invoque arrow

execute as @s[tag=hsuse] at @s run summon arrow ^ ^1 ^0.8 {Tags:["hsarrow","motionprojectiles"],Motion:[0.0,0.0,0.0]}
execute as @e[type=arrow,tag=hsarrow] run data modify entity @s NoGravity set value 1b
execute as @e[type=arrow,tag=hsarrow] run data modify entity @s PersistenceRequired set value 1b


execute as @e[tag=motionprojectiles,tag=!motionadd] at @s rotated as @p run function utilitaire:motion_projectiles/motion
ride @s[tag=hsuse] mount @e[type=arrow,tag=hsarrow,limit=1,sort=nearest]
#execute as @s[tag=hsuse] at @s run summon tnt ^ ^ ^0.8 {Tags:["hsarrow","motionprojectiles"],Fuse:100}
schedule function weapons:hypersword/hs_spin 2t
# fin
tag @s[tag=hsuse] remove hsuse
scoreboard players set @s clickdroit 0
advancement revoke @s only weapons:hs