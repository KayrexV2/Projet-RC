execute as @a[scores={superninjaCooldown=5}] at @s run playsound block.beacon.deactivate ambient @a ~ ~ ~ 100 0.2
execute as @a[scores={superninjaCooldown=5}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ 100 1.5

# particule arrive
execute at @a[scores={superninjaCooldown=5}] positioned ^ ^-0.5 ^2.5 run particle minecraft:explosion ~ ~ ~ 0.01 0.01 0.01 0.01 5
execute at @a[scores={superninjaCooldown=5}] positioned ^1 ^-0.5 ^1.5 run particle minecraft:explosion ~ ~ ~ 0.01 0.01 0.01 0.01 5
execute at @a[scores={superninjaCooldown=5}] positioned ^-1 ^-0.5 ^1.5 run particle minecraft:explosion ~ ~ ~ 0.01 0.01 0.01 0.01 5
execute at @a[scores={superninjaCooldown=5}] positioned ^1.5 ^-0.5 ^0.5 run particle minecraft:explosion ~ ~ ~ 0.01 0.01 0.01 0.01 5
execute at @a[scores={superninjaCooldown=5}] positioned ^-1.5 ^-0.5 ^0.5 run particle minecraft:explosion ~ ~ ~ 0.01 0.01 0.01 0.01 5
execute at @a[scores={superninjaCooldown=5}] positioned ^2 ^-0.5 ^ run particle minecraft:explosion ~ ~ ~ 0.01 0.01 0.01 0.01 5
execute at @a[scores={superninjaCooldown=5}] positioned ^-2 ^-0.5 ^ run particle minecraft:explosion ~ ~ ~ 0.01 0.01 0.01 0.01 5


# prépa dgts
execute at @a[scores={superninjaCooldown=5}] as @e[tag=mob,distance=..8] run tag @s add SN
execute as @e[tag=SN] run item replace entity @s weapon.offhand with warped_button[ custom_data={killsndetect:1b}]

#schedule function pouvoir:superninja/tp 20t
schedule function pouvoir:superninja/cdfin 10s

# vecteur vitesse
execute at @a[scores={superninjaCooldown=5}] run execute as @e[tag=SN,dx=7,dy=7,dz=7] run data modify entity @s Motion set value [1.0,1.0,1.0]
execute at @a[scores={superninjaCooldown=5}] run execute as @e[tag=SN,dx=-7,dy=7,dz=-7] run data modify entity @s Motion set value [-1.0,1.0,-1.0]
execute at @a[scores={superninjaCooldown=5}] run execute as @e[tag=SN,dx=-7,dy=7,dz=7] run data modify entity @s Motion set value [-1.0,1.0,1.0]
execute at @a[scores={superninjaCooldown=5}] run execute as @e[tag=SN,dx=7,dy=7,dz=-7] run data modify entity @s Motion set value [1.0,1.0,-1.0]

# prépa dgts
execute at @a[scores={superninjaCooldown=5}] run summon marker ~ ~ ~ {Tags:[SNkill_detect_marker]}

execute at @e[type=marker,tag=SNkill_detect_marker] as @e[tag=SN,distance=..4] run damage @s 40 sonic_boom
execute at @e[type=marker,tag=SNkill_detect_marker] as @e[tag=SN,distance=..7] run damage @s 20 sonic_boom

kill @e[type=marker,tag=SNkill_detect_marker]
# fin
execute as @a[scores={sneak=23..25,superninjaCooldown=5}] at @s run scoreboard players set @s superninjaCooldown 2
execute as @a[scores={sneak=23..25,superninjaCooldown=2}] at @s run scoreboard players set @s sneak 0

schedule clear pouvoir:superninja/shocwave

#super saut cinétique

#çamarche