scoreboard players set @s arbalete 0

execute at @s run tag @e[type=arrow,nbt=!{OnGround:1b},limit=1,sort=nearest] add sya
execute at @s run execute if data entity @e[type=minecraft:arrow,limit=1,sort=nearest] {PierceLevel:3b} run data merge entity @e[sort=nearest,type=minecraft:arrow,limit=1,nbt={PierceLevel:3b}] {damage:3}

advancement revoke @s only weapons:autopercuteur
