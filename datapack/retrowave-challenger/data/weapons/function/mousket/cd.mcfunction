# score +1
scoreboard players add @a[tag=mkcd,scores={pkcd=0..}] pkcd 1

# mise en place recul
execute as @a[tag=mkcd,scores={pkcd=1}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=mkcd,scores={pkcd=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status
# fin recul
execute as @a[tag=mkcd,scores={pkcd=6}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=mkcd,scores={pkcd=6},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status
# refroidissement début
execute as @a[tag=mkcd,scores={pkcd=8}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=mkcd,scores={pkcd=8},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status

execute as @a[tag=mkcd,scores={pkcd=8}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run playsound block.lava.extinguish ambient @a ~ ~ ~ 0.3 2
execute as @a[tag=mkcd,scores={pkcd=8}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run playsound block.iron_trapdoor.open ambient @a ~ ~ ~ 0.9 2


# fin refroidissement
execute as @a[tag=mkcd,scores={pkcd=10}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=mkcd,scores={pkcd=10},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,mk:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status
execute as @a[tag=mkcd,scores={pkcd=10}] run scoreboard players set @s pkcd 0
tag @a[tag=mkcd,scores={pkcd=0}] remove mkcd

# lancement boucle
execute as @a[tag=mkcd,scores={pkcd=1..10}] run schedule function weapons:mousket/cd 1t