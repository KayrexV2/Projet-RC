# invoque arrow
$execute as @s[tag=hsuse] at @s run summon arrow ^ ^1 ^0.1 {damage:0,Owner:[I;$(UUID)] ,PierceLevel:127b,pickup:2b,Tags:["hsarrow","motionprojectiles","arrowplayer"],Motion:[0.0,0.0,0.0],item:{id:"minecraft:arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water",custom_color:-1,custom_effects:[{id:"minecraft:water_breathing",amplifier:1,duration:1,show_particles:0b,show_icon:0b,ambient:0b}]},  } }}
$execute at @s as @e[type=arrow,tag=hsarrow,distance=..100,nbt={Owner:[I;$(UUID)]}] run scoreboard players set @s hs 1
$execute at @s run execute as @e[type=arrow,tag=hsarrow,distance=..100,nbt={Owner:[I;$(UUID)]}] run data modify entity @s NoGravity set value 1b


# application vecteur vitess
$execute at @s run execute as @e[type=arrow,distance=..100, tag=motionprojectiles,tag=!motionadd,nbt={Owner:[I;$(UUID)]}] at @s rotated as @p run function utilitaire:motion_projectiles/motion