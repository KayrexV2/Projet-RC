execute as @e[tag=SN,nbt={OnGround:0b}] run tag @s add SNair
execute as @e[tag=SN,tag=!SNair] run item replace entity @s weapon.offhand with air
execute as @e[tag=SN] run tag @s remove SN