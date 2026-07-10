# score +1
scoreboard players add @a[tag=pk1use, tag=!pkcd] pkcd 1
scoreboard players add @a[tag=pkcd] pkcd 1

# mise en place recul tire1 (supression tag verifskin si arme pas dans la main)
execute as @a[tag=pk1use,tag=!pkcd,scores={pkcd=1}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run tag @s remove skin_verif
execute as @a[scores={pkcd=1}, tag=!pkcd,tag=pk1use, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status

# cd recul tire1
execute as @a[tag=pk1use,tag=!pkcd,scores={pkcd=4}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run tag @s remove skin_verif
execute as @a[scores={pkcd=4}, tag=!pkcd,tag=pk1use, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status

# fin tire 1
execute as @a[tag=pk1use,tag=!pkcd,scores={pkcd=16}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run tag @s remove skin_verif
execute as @a[scores={pkcd=16}, tag=!pkcd,tag=pk1use, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status

execute as @a[scores={pkcd=16..},tag=pk1use] run tag @s remove pk1use

execute as @a[scores={pkcd=16}, tag=!pkcd] run scoreboard players set @s pkcd 0




# mise en place recul tire2
execute as @a[tag=pkcd,scores={pkcd=51}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=pkcd,scores={pkcd=51}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status

# cd recul tire2
execute as @a[tag=pkcd,scores={pkcd=60}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=pkcd,scores={pkcd=60}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status

# cd 2eme tire
execute as @a[tag=pkcd,scores={pkcd=81}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=pkcd,scores={pkcd=81}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status
execute as @a[tag=pkcd,scores={pkcd=81}] run tag @s remove pkcd
execute as @a[tag=pk1use2,scores={pkcd=81}] run tag @s remove pk1use2

execute as @a[scores={pkcd=81}] run scoreboard players set @s pkcd 0


# boucle
execute as @a[scores={pkcd=1..81}] run schedule function weapons:protokole_41/colldown 1t