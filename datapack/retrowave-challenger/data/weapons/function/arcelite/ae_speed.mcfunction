tag @s[tag=!pullae] add pullae
scoreboard players add @s[tag=pullae,scores={ae=..19}] ae 1

execute as @s[tag=pullae,scores={ae=1..5}] run effect give @s speed 1 1 true
execute as @s[tag=pullae,scores={ae=6..10}] run effect give @s speed 1 3 true
execute as @s[tag=pullae,scores={ae=11..15}] run effect give @s speed 1 7 true
execute as @s[tag=pullae,scores={ae=16..20}] run effect give @s speed 1 10 true

execute as @s[tag=pullae,scores={ae=20}] run tag @s add pulloverae

execute as @s[scores={ae=20..},tag=!pulloverae] run scoreboard players set @s ae 1

execute as @s[tag=pulloverae,scores={ae=20..}] run effect give @s speed 1 10 true



advancement revoke @s only weapons:arcelit_pull