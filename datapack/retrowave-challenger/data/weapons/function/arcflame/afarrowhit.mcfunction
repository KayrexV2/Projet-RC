tag @s add af3
execute at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 1 2 force @a
execute at @s run playsound entity.dragon_fireball.explode ambient @a ~ ~ ~ 1 1 1


execute at @s positioned ~ ~1 ~ run summon minecraft:bat ~ ~ ~ {Silent:1b,Tags:["afdeco"],Invulnerable:1b}
execute at @s positioned ~ ~1 ~ run summon minecraft:bat ~ ~ ~ {Silent:1b,Tags:["afdeco"],Invulnerable:1b}
execute at @s positioned ~ ~1 ~ run summon minecraft:bat ~ ~ ~ {Silent:1b,Tags:["afdeco"],Invulnerable:1b}

effect give @e[type=bat,tag=afdeco] invisibility infinite 1 true
effect give @e[type=bat,tag=afdeco] levitation infinite 2 true
effect give @e[type=bat,tag=afdeco] speed infinite 45 true

scoreboard players set @e[type=bat,tag=afdeco] af 5
function weapons:arcflame/af_deco


execute at @e[scores={af=3},tag=mob] run execute as @e[tag=!af3,tag=mob,dx=4,dy=4,dz=4] run data modify entity @s Motion set value [0.6,0.6,0.6]
execute at @e[scores={af=3},tag=mob] run execute as @e[tag=!af3,tag=mob,dx=-4,dy=4,dz=-4] run data modify entity @s Motion set value [-0.6,0.6,-0.6]
execute at @e[scores={af=3},tag=mob] run execute as @e[tag=!af3,tag=mob,dx=-4,dy=4,dz=4] run data modify entity @s Motion set value [-0.6,0.6,0.6]
execute at @e[scores={af=3},tag=mob] run execute as @e[tag=!af3,tag=mob,dx=4,dy=4,dz=-4] run data modify entity @s Motion set value [0.6,0.6,-0.6]

tag @s remove af3
execute at @e[scores={af=3},tag=mob] run execute as @e[tag=!af3,tag=mob,distance=..4] run damage @s 30 explosion by @a[tag=affire,limit=1]
damage @s 50 explosion by @a[tag=affire,limit=1]

scoreboard players remove @a[tag=affire] mana 9
execute as @e[tag=mob,scores={af=1..3}] run tag @a[tag=affire,limit=1,sort=nearest] remove affire

scoreboard players set @s af 0
