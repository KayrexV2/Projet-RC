scoreboard players add @a[scores={mg=1..20}] mg 1

execute as @a[scores={mg=20}] run advancement revoke @s only weapons:mg

execute as @a[scores={mg=20}] run scoreboard players set @s mg 0
execute as @a[scores={mg=1..}] run schedule function weapons:marteau_gravite/mg_cd 1t