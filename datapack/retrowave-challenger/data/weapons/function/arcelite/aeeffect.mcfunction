execute as @e[type=arrow,tag=aetrack,nbt={inGround:0b}] at @s run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.07 3 force

#execute as @e[type=minecraft:arrow,nbt={inGround:0b},tag=aetrack] store result entity @s Motion[0] double 1 run data get entity @s Motion[0]
#execute as @e[type=minecraft:arrow,nbt={inGround:0b},tag=aetrack] store result entity @s Motion[1] double 1 run data get entity @s Motion[1]
#execute as @e[type=minecraft:arrow,nbt={inGround:0b},tag=aetrack] store result entity @s Motion[2] double 1 run data get entity @s Motion[2]

execute as @e[type=arrow,tag=aetrack,nbt={inGround:0b}] run schedule function weapons:arcelite/aeeffect 1t
