# début
execute as @s[scores={mana=12..,mg=0}] run tag @s add mguse

execute at @s[tag=mguse] run particle explosion ^ ^1 ^1 1 1 1 1 2
execute at @s[tag=mguse] run playsound entity.dragon_fireball.explode ambient @a[distance=..5] ~ ~ ~ 0.5 1 1
execute at @s[tag=mguse] run playsound block.anvil.land ambient @a[distance=..5] ~ ~ ~ 0.9 1


# orientation detect
execute as @s store result score @s y_rotation run data get entity @s Rotation[0]

execute as @s[y_rotation=-179.9..-90,tag=!mgcd,tag=mguse,tag=!1mgd] run tag @s add 1mgd
execute as @s[y_rotation=-179.9..-90,tag=!mgcd,tag=mguse] run tag @s remove 2mgd
execute as @s[y_rotation=-179.9..-90,tag=!mgcd,tag=mguse] run tag @s remove 3mgd
execute as @s[y_rotation=-179.9..-90,tag=!mgcd,tag=mguse] run tag @s remove 4mgd

execute as @s[y_rotation=-89.9..0,tag=!mgcd,tag=mguse,tag=!2mgd] run tag @s add 2mgd
execute as @s[y_rotation=-89.9..0,tag=!mgcd,tag=mguse] run tag @s remove 1mgd
execute as @s[y_rotation=-89.9..0,tag=!mgcd,tag=mguse] run tag @s remove 3mgd
execute as @s[y_rotation=-89.9..0,tag=!mgcd,tag=mguse] run tag @s remove 4mgd


execute as @s[y_rotation=0.1..90,tag=!mgcd,tag=mguse,tag=!3mgd] run tag @s add 3mgd
execute as @s[y_rotation=0.1..90,tag=!mgcd,tag=mguse] run tag @s remove 2mgd
execute as @s[y_rotation=0.1..90,tag=!mgcd,tag=mguse] run tag @s remove 1mgd
execute as @s[y_rotation=0.1..90,tag=!mgcd,tag=mguse] run tag @s remove 4mgd


execute as @s[y_rotation=90.1..180,tag=!mgcd,tag=mguse,tag=!4mgd] run tag @s add 4mgd
execute as @s[y_rotation=90.1..180,tag=!mgcd,tag=mguse] run tag @s remove 2mgd
execute as @s[y_rotation=90.1..180,tag=!mgcd,tag=mguse] run tag @s remove 3mgd
execute as @s[y_rotation=90.1..180,tag=!mgcd,tag=mguse] run tag @s remove 1mgd


# dgts de zone
execute at @s[tag=mguse,tag=1mgd] run execute as @e[tag=mob, dx=3.5,dy=4,dz=-3.5] run effect give @s slowness 2 1
execute at @s[tag=mguse,tag=2mgd] run execute as @e[tag=mob, dx=3.5,dy=4,dz=3.5] run effect give @s slowness 2 1
execute at @s[tag=mguse,tag=3mgd] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=3.5] run effect give @s slowness 2 1
execute at @s[tag=mguse,tag=4mgd] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=-3.5] run effect give @s slowness 2 1


execute at @s[tag=mguse,tag=1mgd,tag=!bkulti] run execute as @e[tag=mob, dx=3.5,dy=4,dz=-3.5] run damage @s 11 player_attack by @a[limit=1,tag=mguse,sort=nearest]
execute at @s[tag=mguse,tag=2mgd,tag=!bkulti] run execute as @e[tag=mob, dx=3.5,dy=4,dz=3.5] run damage @s 11 player_attack by @a[limit=1,tag=mguse,sort=nearest]
execute at @s[tag=mguse,tag=3mgd,tag=!bkulti] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=3.5] run damage @s 11 player_attack by @a[limit=1,tag=mguse,sort=nearest]
execute at @s[tag=mguse,tag=4mgd,tag=!bkulti] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=-3.5] run damage @s 11 player_attack by @a[limit=1,tag=mguse,sort=nearest]

execute at @s[tag=mguse,tag=1mgd,tag=bkulti] run execute as @e[tag=mob, dx=3.5,dy=4,dz=-3.5] run damage @s 21 player_attack by @a[limit=1,tag=mguse,sort=nearest]
execute at @s[tag=mguse,tag=2mgd,tag=bkulti] run execute as @e[tag=mob, dx=3.5,dy=4,dz=3.5] run damage @s 21 player_attack by @a[limit=1,tag=mguse,sort=nearest]
execute at @s[tag=mguse,tag=3mgd,tag=bkulti] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=3.5] run damage @s 21 player_attack by @a[limit=1,tag=mguse,sort=nearest]
execute at @s[tag=mguse,tag=4mgd,tag=bkulti] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=-3.5] run damage @s 21 player_attack by @a[limit=1,tag=mguse,sort=nearest]


execute at @s[tag=mguse,tag=1mgd,tag=!bkulti] run execute as @e[tag=mob, dx=3.5,dy=4,dz=-3.5] run data modify entity @s Motion set value [0.4,0.4,-0.4]
execute at @s[tag=mguse,tag=2mgd,tag=!bkulti] run execute as @e[tag=mob, dx=3.5,dy=4,dz=3.5] run data modify entity @s Motion set value [0.4,0.4,0.4]
execute at @s[tag=mguse,tag=3mgd,tag=!bkulti] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=3.5] run data modify entity @s Motion set value [-0.4,0.4,0.4]
execute at @s[tag=mguse,tag=4mgd,tag=!bkulti] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=-3.5] run data modify entity @s Motion set value [-0.4,0.4,-0.4]

execute at @s[tag=mguse,tag=1mgd,tag=bkulti] run execute as @e[tag=mob, dx=3.5,dy=4,dz=-3.5] run data modify entity @s Motion set value [0.6,0.6,-0.6]
execute at @s[tag=mguse,tag=2mgd,tag=bkulti] run execute as @e[tag=mob, dx=3.5,dy=4,dz=3.5] run data modify entity @s Motion set value [0.6,0.6,0.6]
execute at @s[tag=mguse,tag=3mgd,tag=bkulti] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=3.5] run data modify entity @s Motion set value [-0.6,0.6,0.6]
execute at @s[tag=mguse,tag=4mgd,tag=bkulti] run execute as @e[tag=mob, dx=-3.5,dy=4,dz=-3.5] run data modify entity @s Motion set value [-0.6,0.6,-0.6]

# fin

scoreboard players set @s[tag=mguse] mg 1
execute as @s[scores={mg=1}] run schedule function weapons:marteau_gravite/mg_cd 1t
scoreboard players remove @s[tag=mguse] mana 12

tag @s remove mguse
tag @s remove 1mgd
tag @s remove 2mgd
tag @s remove 3mgd
tag @s remove 4mgd

execute as @s[tag=!mguse] run advancement revoke @s only weapons:mg
