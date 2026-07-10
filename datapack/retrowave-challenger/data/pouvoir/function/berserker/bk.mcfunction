# bottle easteregg
execute as @e[type=item,nbt={OnGround:1b}] if items entity @s container.0 glass_bottle[minecraft:custom_data={bk_vide:1b}] at @s run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 1 1 
execute as @e[type=item,nbt={OnGround:1b}] if items entity @s container.0 glass_bottle[minecraft:custom_data={bk_vide:1b}] at @s run particle minecraft:item{item:glass} ~ ~ ~ 0.2 0.2 0.2 0.05 50 normal
execute as @e[type=item,nbt={OnGround:1b}] if items entity @s container.0 glass_bottle[minecraft:custom_data={bk_vide:1b}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1200,Tags:[bkeg]}
execute as @e[type=area_effect_cloud,tag=bkeg] run function pouvoir:berserker/bkeg
execute as @e[type=item,nbt={OnGround:1b}] if items entity @s container.0 glass_bottle[minecraft:custom_data={bk_vide:1b}] run kill @s


# spawn marker
execute as @a[tag=bkuse, nbt={OnGround:1b}] run kill @e[type=marker,tag=bkd]
execute as @a[tag=!bkcd,tag=bkuse, nbt={OnGround:1b}] at @s run summon marker ~ ~0.5 ~ {Tags:[bkd]}


# orientation detect
execute as @a[tag=bkuse] store result score @s y_rotation run data get entity @s Rotation[0]

execute as @a[tag=!bkcd,tag=bkuse,tag=!1bkd, y_rotation=-179.9..-90] run tag @s add 1bkd
execute as @a[tag=!bkcd,tag=bkuse, y_rotation=-179.9..-90] run tag @s remove 2bkd
execute as @a[tag=!bkcd,tag=bkuse, y_rotation=-179.9..-90] run tag @s remove 3bkd
execute as @a[tag=!bkcd,tag=bkuse, y_rotation=-179.9..-90] run tag @s remove 4bkd

execute as @a[tag=!bkcd,tag=bkuse,tag=!2bkd,y_rotation=-89.9..0] run tag @s add 2bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=-89.9..0] run tag @s remove 1bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=-89.9..0] run tag @s remove 3bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=-89.9..0] run tag @s remove 4bkd


execute as @a[tag=!bkcd,tag=bkuse,tag=!3bkd,y_rotation=0.1..90] run tag @s add 3bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=0.1..90] run tag @s remove 2bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=0.1..90] run tag @s remove 1bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=0.1..90] run tag @s remove 4bkd


execute as @a[tag=!bkcd,tag=bkuse,tag=!4bkd,y_rotation=90.1..180] run tag @s add 4bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=90.1..180] run tag @s remove 2bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=90.1..180] run tag @s remove 3bkd
execute as @a[tag=!bkcd,tag=bkuse,y_rotation=90.1..180] run tag @s remove 1bkd

# tag direction
#1
execute at @e[type=marker, tag=bkd  , sort=nearest] run execute as @a[scores={sneaktime=1..}, nbt=!{OnGround:1b},tag=1bkd, dx=7,dy=4,dz=-7,distance=1.6..] if block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkddeant
execute at @e[type=marker, tag=bkd  , sort=nearest] run execute as @a[scores={sneaktime=1..}, nbt=!{OnGround:1b},tag=1bkd, dx=-7,dy=4,dz=7,distance=1.2..,tag=!bkddeant] if block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkdback

#2 
execute at @e[type=marker, tag=bkd  , sort=nearest] run execute as @a[scores={sneaktime=1..},nbt=!{OnGround:1b},tag=2bkd, dx=7,dy=4,dz=7,distance=1.6..] if block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkddeant
execute at @e[type=marker, tag=bkd  , sort=nearest] run execute as @a[scores={sneaktime=1..},nbt=!{OnGround:1b},tag=2bkd, dx=-7,dy=4,dz=-7,distance=1.2..,tag=!bkddeant] if block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkdback

#3
execute at @e[type=marker, tag=bkd  , sort=nearest] run execute as @a[scores={sneaktime=1..},nbt=!{OnGround:1b},tag=3bkd, dx=-7,dy=4,dz=7,distance=1.6..] if block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkddeant
execute at @e[type=marker, tag=bkd  , sort=nearest] run execute as @a[scores={sneaktime=1..},nbt=!{OnGround:1b},tag=3bkd, dx=7,dy=4,dz=-7,distance=1.2..,tag=!bkddeant] if block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkdback

#4
execute at @e[type=marker, tag=bkd  , sort=nearest] run execute as @a[scores={sneaktime=1..},nbt=!{OnGround:1b},tag=4bkd, dx=-7,dy=4,dz=-7,distance=1.6..] if block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkddeant
execute at @e[type=marker, tag=bkd  , sort=nearest] run execute as @a[scores={sneaktime=1..},nbt=!{OnGround:1b},tag=4bkd, dx=7,dy=4,dz=7,distance=1.2..,tag=!bkddeant] if block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkdback

# tp
effect give @a[tag=bkddeant] levitation 1 1 true

execute as @a[tag=bkddeant,tag=!bkdback] at @s run tp @s ^ ^0.1 ^1.5
execute as @a[tag=bkdback,tag=!bkddeant] at @s run tp @s ^ ^0.3 ^-1.5
execute as @a[tag=bkddeant,tag=!bkulti] run effect give @s resistance 1 2 true
execute as @a[tag=bkdback,tag=!bkulti] run effect give @s resistance 1 2 true
execute as @a[tag=bkddeant,tag=bkulti] run effect give @s resistance 1 4 true
execute as @a[tag=bkdback,tag=bkulti] run effect give @s resistance 1 4 true

effect clear @a[tag=bkddeant] levitation

# tp si dans block 
execute as @a[tag=bkuse] at @s unless block ~ ~ ~ #utilitaire:air run function utilitaire:tp_air
#execute as @a[tag=!bkcd,tag=bkdback] at @s unless block ~ ~ ~ #utilitaire:air run function utilitaire:tp_air

# cooldown
execute as @a[tag=bkddeant,nbt={OnGround:1b}] run effect clear @s resistance
execute as @a[tag=bkdback,nbt={OnGround:1b}] run effect clear @s resistance

execute as @a[tag=bkddeant] unless block ~ ~-0.1 ~ #utilitaire:air run scoreboard players set @s bk 1
execute as @a[tag=bkdback] unless block ~ ~-0.1 ~ #utilitaire:air run scoreboard players set @s bk 1
execute as @a[scores={bk=1}] unless block ~ ~-0.1 ~ #utilitaire:air run tag @s add bkcd
execute as @a[scores={bk=1},tag=bkcd] run function pouvoir:berserker/bkcd

# fin
scoreboard players set @a[tag=bkdback,nbt={OnGround:1b}] sneaktime 0
scoreboard players set @a[tag=bkddeant,nbt={OnGround:1b}] sneaktime 0

tag @a[tag=bkdback,nbt={OnGround:1b}] remove bkdback
tag @a[tag=bkddeant,nbt={OnGround:1b}] remove bkddeant


scoreboard players set @a[nbt={OnGround:1b}] sneaktime 0