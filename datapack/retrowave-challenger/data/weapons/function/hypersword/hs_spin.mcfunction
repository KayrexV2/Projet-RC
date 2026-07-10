
execute as @e[type=arrow,tag=hsarrow] at @s run execute as @e[tag=mob,distance=..1.5] run effect give @s levitation 10 10

execute as @e[type=arrow,tag=hsarrow] run schedule function weapons:hypersword/hs_spin 1t