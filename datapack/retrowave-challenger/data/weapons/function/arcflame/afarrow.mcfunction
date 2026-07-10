# ciblage
execute at @e[type=arrow,sort=nearest,tag=aftrack,nbt={Passengers:[{id:"minecraft:marker",Tags:["arrowaf_rider"]}]},nbt={inGround:1b}] run tag @a[tag=affire,limit=1,sort=nearest] remove affire
execute at @e[type=arrow,sort=nearest,tag=aftrack,nbt={Passengers:[{id:"minecraft:marker",Tags:["arrowaf_rider"]}]},nbt={inGround:1b}] run kill @e[type=marker,tag=arrowaf_rider,distance=..0.5] 
execute as @e[type=marker,predicate=!weapons:af1] at @s run tag @e[tag=mob,limit=1,sort=nearest,nbt={HurtTime:10s}] add aftarget

scoreboard players add @e[tag=aftarget] af 1
# deco
function weapons:arcflame/af_deco
# stade de la cible
execute as @a[scores={mana=..8},tag=affire] run execute as @e[tag=mob,scores={af=3}] run scoreboard players remove @e[tag=aftarget] af 1
execute as @a[scores={mana=9..},tag=affire] run execute as @e[tag=mob,scores={af=3}] run function weapons:arcflame/afarrowhit

scoreboard players set @e[tag=mob,scores={af=1..2},tag=!af_onfire,tag=aftarget] afkill 1
execute as @e[tag=mob,scores={af=1..2,afkill=1}] run function weapons:arcflame/af_3hit

# fin

execute as @e[type=marker,predicate=!weapons:af1] at @s run tag @e[tag=mob,tag=aftarget,limit=1,sort=nearest] remove aftarget
kill @e[type=marker,predicate=!weapons:af1,distance=1..]

# fin joueur
# boucle
execute as @e[type=arrow,tag=aftrack,nbt=!{inGround:1b}] run schedule function weapons:arcflame/afarrow 1t

