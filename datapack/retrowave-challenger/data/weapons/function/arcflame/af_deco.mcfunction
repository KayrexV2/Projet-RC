# bat debris electro static
#execute at @e[type=bat,tag=afdeco] run tp @s ^ ^ ^
execute at @e[type=bat,tag=afdeco] positioned ~ ~ ~ run particle dripping_obsidian_tear ~ ~ ~ 0.2 0 0.2 150 2 force
scoreboard players add @e[type=bat,tag=afdeco] af 1
tp @e[type=bat,tag=afdeco, scores={af=30}] ~ ~-20 ~
kill @e[type=bat,tag=afdeco, scores={af=30}]

execute as @e[type=bat,tag=afdeco] run schedule function weapons:arcflame/af_deco 1t