# tp hitbox
execute at @s run tp @e[type=interaction,tag=hshitbox,sort=nearest,limit=1,distance=..20] ^ ^0.5 ^0.3

#score felche
execute at @s run execute as @e[type=arrow,tag=hsarrow,distance=..100, scores={hs=1..}] run scoreboard players add @s hs 1

# scoreboard de lancé player

scoreboard players add @a[scores={hs=3..},tag=hsuse] hs 1
execute at @s run execute as @e[type=arrow,tag=hsarrow,distance=..100,nbt={inGround:1b}] run scoreboard players set @a[scores={hs=3..}] hs 33

#fonction retour
execute as @s[scores={hs=33..}] run function weapons:hypersword/hs_retour with entity @s[scores={hs=33..}] UUID

#fin retour
tag @s[scores={hs=33..}] remove hsuse