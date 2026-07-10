# SN detect
execute as @s run playsound minecraft:entity.experience_orb.pickup ambient @a[scores={superninjaCooldown=1..}] ~ ~ ~ 100 1
execute as @s run playsound block.grass.break ambient @a[scores={superninjaCooldown=1..}] ~ ~ ~ 100 1.9


# scores
execute as @s run scoreboard players add @a[scores={superninjaCooldown=1..}] SNkill 1
execute as @s run scoreboard players add @a[scores={superninjaCooldown=1..}] Monstre_aneantie 1

kill @s
