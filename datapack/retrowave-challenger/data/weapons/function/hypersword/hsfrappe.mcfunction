#tag joueur
tag @s add hs_hit




# dgts mob
execute at @s positioned ^ ^1 ^1 run summon marker ^ ^ ^1 {Tags:["hs_marker"]}

execute at @s run execute at @e[type=marker,tag=hs_marker,distance=..10,sort=nearest] run execute as @e[tag=mob,distance=..2,limit=4] at @s run damage @s 10 player_attack by @a[tag=hs_hit,limit=1,sort=nearest,distance=..4]

execute at @s run kill @e[type=marker,tag=hs_marker,distance=..3,limit=1,sort=nearest]

# beau
execute at @s positioned ^ ^1 ^1.5 run particle minecraft:sweep_attack ^ ^ ^ 0 0 0 0 1

# fin et changemnent interaction
tag @s remove hs_hit

execute at @s run kill @e[type=minecraft:interaction,tag=hshitbox,distance=..2,limit=1, sort=nearest]
execute at @s run summon minecraft:interaction ~ ~ ~ {Tags:["hshitbox"],width:0.6f,height:1.8f}

advancement revoke @s only weapons:hsfrappe