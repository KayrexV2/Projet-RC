# score +1
scoreboard players add @a[tag=snipcd,scores={pkcd=0..}] pkcd 1

# mise en place recul
execute as @a[tag=snipcd,scores={pkcd=1}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,sniper:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=snipcd,scores={pkcd=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,sniper:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status
# fin recul
execute as @a[tag=snipcd,scores={pkcd=12}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,sniper:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=snipcd,scores={pkcd=12},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,sniper:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status


# brulure skop
execute as @a[tag=snipcd,scores={pkcd=5}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run damage @s 0.5 in_fire by @s

# fin
execute as @a[tag=snipcd,scores={pkcd=40}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,sniper:1b}}}}] run tag @s remove skin_verif
execute as @a[tag=snipcd,scores={pkcd=40},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,sniper:1b}}}}] run playsound block.iron_trapdoor.open ambient @a ~ ~ ~ 0.9 2

execute as @a[tag=snipcd,scores={pkcd=40},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b,sniper:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status
execute as @a[tag=snipcd,scores={pkcd=40}] run scoreboard players set @s pkcd 0
tag @a[tag=snipcd,scores={pkcd=0}] remove snipcd

# lancement boucle
execute as @a[tag=snipcd,scores={pkcd=1..40}] run schedule function weapons:sniper/cd 1t