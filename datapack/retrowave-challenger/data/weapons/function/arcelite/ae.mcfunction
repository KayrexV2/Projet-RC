tag @s remove pullae
tag @s remove pulloverae

effect clear @s speed
execute at @s run tag @e[type=arrow,sort=nearest,limit=1] add aetrack
execute as @e[type=arrow,tag=aetrack] run tag @s add arrowplayer

execute as @e[type=minecraft:arrow,tag=aetrack] run data modify entity @s NoGravity set value 1b

scoreboard players set @e[type=arrow,tag=aetrack,sort=nearest,limit=1] ae 2
function weapons:arcelite/aearrow

#schedule function weapons:arcelite/aearrow 2t

schedule function weapons:arcelite/aeeffect 1t

scoreboard players set @s ae 1
scoreboard players set @s arcdetect 0
advancement revoke @s only weapons:arcelit
advancement revoke @s only weapons:arcelitgauche

