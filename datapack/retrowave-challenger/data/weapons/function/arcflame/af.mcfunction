tag @s[tag=!af_cd] add affire


# arrow
execute at @s[tag=!af_cd] run tag @e[type=arrow,sort=nearest,limit=1,tag=!aftrack] add aftrack
execute as @e[type=arrow,tag=aftrack] run tag @s add arrowplayer
execute as @e[type=arrow,sort=nearest,tag=aftrack,nbt=!{Passengers:[{id:"minecraft:marker",Tags:["arrowaf_rider"]}]},nbt={inGround:0b}] at @s run summon marker ~ ~ ~ {Tags:["arrowaf_rider"]}
ride @e[type=marker,tag=arrowaf_rider,limit=1] mount @e[type=arrow,tag=aftrack,limit=1,sort=nearest,nbt={inGround:0b}]

execute as @s[tag=!af_cd] run function weapons:arcflame/afarrow

# cd
scoreboard players set @s[tag=!af_cd] af 50
tag @s[tag=!af_cd] add af_cd
execute as @s[tag=af_cd] run function weapons:arcflame/af_cd
# fin
scoreboard players set @s arcdetect 0
advancement revoke @s only weapons:arcflame
advancement revoke @s only weapons:arcflamegauche