
# detecttion de sélétion lance éngergétique
execute as @a[nbt={SelectedItem:{id:"minecraft:trident", components:{"minecraft:custom_name":'"Lance énergétique"'}}}] run scoreboard players set @s lanceenergetique 1
execute as @a[nbt=!{SelectedItem:{id:"minecraft:trident", components:{"minecraft:custom_name":'"Lance énergétique"'}}},scores={Armedelance=0}] run scoreboard players set @s lanceenergetique 0

# detect ae
execute as @a[nbt={SelectedItem:{id:"minecraft:bow", components:{"minecraft:custom_data":{ae:1b}}}},tag=!pullae] run scoreboard players set @s ae 1
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bow", components:{"minecraft:custom_data":{ae:1b}}}}] run scoreboard players set @s ae 0
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bow", components:{"minecraft:custom_data":{ae:1b}}}},tag=pullae] run effect clear @s speed
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bow", components:{"minecraft:custom_data":{ae:1b}}}},tag=pullae] run tag @s remove pullae

# speed bkulti
execute as @a[tag=bkulti] run effect give @s speed 1 2 true



schedule function weapons:diff_armedelance 3t
