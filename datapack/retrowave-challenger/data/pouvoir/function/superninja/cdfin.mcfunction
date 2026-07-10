#execute as @e[tag=SN] run tag @s remove SN
scoreboard players set @a[scores={superninjaCooldown=2}] superninjaCooldown 1
execute as @a[scores={superninjaCooldown=1}] at @s run scoreboard players set @s sneak 0
