## armor_stand raycast
execute as @s[scores={sneak=5,superninjaCooldown=1}] at @s if entity @e[tag=mob,distance=1..25] run summon armor_stand ~ ~-1 ~ {Tags:[SN_raycast],Invisible:1b, Invulnerable:1b, NoGravity: 1b, NoBasePlate:1b}

execute at @s run tp @e[type=armor_stand, tag=SN_raycast, distance=..5 ] ~ ~ ~

execute as @e[type=armor_stand, tag=SN_raycast] at @s anchored eyes positioned ^ ^ ^ run function pouvoir:superninja/sn_raycast

## players scoreboard

execute as @s[scores={sneak=5,superninjaCooldown=1}] at @s if entity @e[tag=mob,distance=1..25] facing entity @e[tag=mob,sort=nearest,limit=1,distance=1..25] feet run tp @s ^ ^ ^ facing entity @e[tag=mob,sort=nearest,limit=1,distance=1..25] feet
execute as @s[scores={sneak=5,superninjaCooldown=1}] at @s if entity @e[tag=mob,distance=1..25] run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1 1

execute as @s[scores={sneak=5,superninjaCooldown=1}] at @s as @e[tag=mob,distance=1..25] run scoreboard players set @s[scores={sneak=5,superninjaCooldown=1}] superninjaCooldown 3
execute as @s[scores={sneak=5..,superninjaCooldown=1}] at @s as @e[tag=mob,distance=26..] run scoreboard players set @s[scores={sneak=5..,superninjaCooldown=1}] sneak 0

execute as @s[scores={sneak=5,superninjaCooldown=3}] run schedule function pouvoir:superninja/cdsn1 23t
execute as @s[scores={sneak=10,superninjaCooldown=3}] run effect give @s speed 1 2 true

execute as @s[scores={sneak=13,superninjaCooldown=3}] run effect give @s speed 1 3 true
execute as @s[scores={sneak=13,superninjaCooldown=3}] run scoreboard players set @s superninjaCooldown 4
execute as @s[scores={sneak=13,superninjaCooldown=4}] run schedule function pouvoir:superninja/cdsn2 30t

effect give @s[scores={sneak=14,superninjaCooldown=4}] resistance 7 2 false

execute as @s[scores={sneak=16,superninjaCooldown=4}] run effect give @s speed 1 4 true
execute as @s[scores={sneak=19,superninjaCooldown=4}] run effect give @s speed 1 5 true



effect clear @s[scores={sneak=23..,superninjaCooldown=4}] speed



execute as @s[scores={sneak=23,superninjaCooldown=4}] at @s anchored eyes positioned as @e[tag=mob, sort=nearest,limit=1, distance=..26] if block ~ ~ ~ #utilitaire:air facing entity @s eyes run tp @s ^ ^ ^2.5
execute as @s[scores={sneak=23,superninjaCooldown=4}] at @s unless block ~ ~ ~ #utilitaire:air run function utilitaire:tp_air

execute as @s[scores={sneak=23,superninjaCooldown=4}] run scoreboard players set @s superninjaCooldown 5
execute as @s[scores={sneak=23,superninjaCooldown=5}] at @s run schedule function pouvoir:superninja/shocwave 2t
