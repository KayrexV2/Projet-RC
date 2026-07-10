# première possibilité
execute store success score @s ramdom if predicate utilitaire:ramdom

# dexième possibilité
execute as @s[scores={ramdom=0}] run tag @s add r1
execute as @s[scores={ramdom=0}] run execute store success score @s ramdom if predicate utilitaire:ramdom
scoreboard players add @s[tag=r1,scores={ramdom=1}] ramdom 1
tag @s[tag=r1,scores={ramdom=1..}] remove r1

# troisème possibilidad
execute as @s[scores={ramdom=0},tag=r1] run tag @s add r2

tag @s[tag=r2,scores={ramdom=0..}] remove r1

execute as @s[scores={ramdom=0},tag=r2] run execute store success score @s ramdom if predicate utilitaire:ramdom
scoreboard players add @s[tag=r2,scores={ramdom=1}] ramdom 2
tag @s[scores={ramdom=3},tag=r2] remove r2

# 4ème possibilidad
execute as @s[scores={ramdom=0},tag=r2] run tag @s add r3

tag @s[tag=r3,scores={ramdom=0..}] remove r2

execute as @s[scores={ramdom=0},tag=r3] run execute store success score @s ramdom if predicate utilitaire:ramdom
scoreboard players add @s[tag=r3,scores={ramdom=1}] ramdom 3
tag @s[scores={ramdom=4},tag=r3] remove r3

# 5ème possibilidad
execute as @s[scores={ramdom=0},tag=r3] run tag @s add r4

tag @s[tag=r4,scores={ramdom=0..}] remove r3

execute as @s[scores={ramdom=0},tag=r4] run execute store success score @s ramdom if predicate utilitaire:ramdom
scoreboard players add @s[tag=r4,scores={ramdom=1}] ramdom 4
tag @s[scores={ramdom=5},tag=r4] remove r4

# 6ème possibilité
scoreboard players set @s[tag=r4,scores={ramdom=0}] ramdom 6
tag @s[scores={ramdom=6}] remove r4
