execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[limit=30, sort=nearest,tag=mob,dx=5.5,dy=6.5,dz=5.5] run damage @s 8 player_attack by @a[scores={dvcd=1..},limit=1]
execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[limit=30, sort=nearest,tag=mob,dx=-5.5,dy=6.5,dz=-5.5] run damage @s 8 player_attack by @a[scores={dvcd=1..},limit=1]
execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[limit=30, sort=nearest,tag=mob,dx=-5.5,dy=6.5,dz=5.5] run damage @s 8 player_attack by @a[scores={dvcd=1..},limit=1]
execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[limit=30, sort=nearest,tag=mob,dx=5.5,dy=6.5,dz=-5.5] run damage @s 8 player_attack by @a[scores={dvcd=1..},limit=1]
#execute as @a[scores={DVuse=1..}] at @s run execute if entity @e[tag=mob,distance=..4] run playsound block.amethyst_block.chime master @a[scores={DVuse=1..}] ~ ~ ~ 0.5 0.5

#execute as @a[scores={DVuse=1..}] at @s anchored eyes positioned ^ ^ ^1 if entity @e[tag=mob,distance=..3] run playsound entity.player.hurt_freeze master @s ~ ~ ~ 0.1 0.01
