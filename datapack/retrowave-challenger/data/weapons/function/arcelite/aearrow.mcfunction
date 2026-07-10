execute as @e[type=arrow,tag=aetrack,scores={ae=8}] run data modify entity @s NoGravity set value 0b
scoreboard players add @e[type=arrow,tag=aetrack,scores={ae=2..7}] ae 1

execute as @e[type=arrow,tag=aetrack,scores={ae=2..8},nbt=!{inGround:1b}] run schedule function weapons:arcelite/aearrow 1s
