$execute at @s run execute at @e[type=arrow,tag=hsarrow,distance=..150] run summon trident ~ ~ ~ {Silent:1b,pickup:1b,Owner:[I;$(UUID)],player:1b,shake:1b,Tags:["arrowplayer"],item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["4001"]},"minecraft:custom_data":{hs:1b,arme:1b}}}}
$execute at @s run execute at @e[type=arrow,tag=hsarrow,distance=..150, nbt={inGround:1b}] run summon trident ~ ~ ~ {Silent:1b,pickup:1b,Owner:[I;$(UUID)],Tags:["arrowplayer"],player:1b,shake:1b,item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["4001"]},"minecraft:custom_data":{hs:1b,arme:1b}}}}


$execute at @s run kill @e[type=arrow,tag=hsarrow,distance=..150,nbt={Owner:[I;$(UUID)]}]
$execute at @s run kill @e[type=arrow,tag=hsarrow,distance=..150,nbt={inGround:1b,Owner:[I;$(UUID)]}]


scoreboard players set @s hs 1

say yes