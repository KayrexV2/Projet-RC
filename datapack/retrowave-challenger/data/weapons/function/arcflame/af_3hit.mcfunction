# début
tag @e[tag=mob,scores={af=1..2,afkill=1},tag=!af_onfire] add af_onfire

# mob sur le point d'exploser
execute at @e[tag=mob, scores={af=2}] positioned ~ ~0.9 ~ run particle dripping_obsidian_tear ~ ~ ~ 0.2 0 0.2 150 2 force

# dgts de feux acide
execute as @e[tag=mob,scores={af=1..3,afkill=1}] run tag @a[tag=affire,limit=1,sort=nearest] remove affire

scoreboard players add @e[tag=mob,scores={af=1..2,afkill=1..},tag=af_onfire] afkill 1

execute as @e[tag=mob, scores={af=1..2,afkill=4}] run damage @s 2 on_fire
execute as @e[tag=mob, scores={af=1..2,afkill=8}] run damage @s 2 on_fire
execute as @e[tag=mob, scores={af=1..2,afkill=12}] run damage @s 2 on_fire
execute as @e[tag=mob, scores={af=1..2,afkill=16}] run damage @s 2 on_fire
execute as @e[tag=mob, scores={af=1..2,afkill=20}] run damage @s 2 on_fire
#execute as @e[tag=mob, scores={af=1..2,afkill=24}] run damage @s 1 on_fire
#execute as @e[tag=mob, scores={af=1..2,afkill=28}] run damage @s 1 on_fire
#execute as @e[tag=mob, scores={af=1..2,afkill=32}] run damage @s 1 on_fire
#execute as @e[tag=mob, scores={af=1..2,afkill=36}] run damage @s 1 on_fire
#execute as @e[tag=mob, scores={af=1..2,afkill=40}] run damage @s 1 on_fire
#execute as @e[tag=mob, scores={af=1..2,afkill=44}] run damage @s 1 on_fire
#execute as @e[tag=mob, scores={af=1..2,afkill=48}] run damage @s 1 on_fire

# fin
tag @e[tag=mob, scores={af=1..2,afkill=17},tag=af_onfire] remove af_onfire

scoreboard players set @e[tag=mob, scores={af=1..2,afkill=21}] afkill 0
# boucle

execute as @e[tag=mob, scores={af=1..2}] run schedule function weapons:arcflame/af_3hit 5t
