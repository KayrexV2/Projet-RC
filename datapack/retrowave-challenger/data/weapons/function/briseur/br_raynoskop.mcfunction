scoreboard players add @a[scores={rc=1..},tag=brfire] rc 1

## déplacement énergie
#  attribution score marker
execute as @a[scores={rc=1..60},tag=brfire] positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:[brray]}
execute at @a[scores={rc=1..60},tag=brfire] run scoreboard players operation @e[type=marker, tag=brray, tag=!brray2] rc += @a[scores={rc=1..60},tag=brfire] rc
execute at @a[scores={rc=1..60},tag=brfire] run tag @e[type=marker, tag=brray, sort=nearest] add brray2


# fin score
execute if score @a[scores={rc=60..},limit=1, tag=brfire] rc matches 60.. run scoreboard players set @s rc 0

# fin de boucle
execute if score @a[scores={rc=1..},tag=brfire, limit=1] rc matches 1..60 positioned ^ ^ ^1 run function weapons:briseur/br_raynoskop