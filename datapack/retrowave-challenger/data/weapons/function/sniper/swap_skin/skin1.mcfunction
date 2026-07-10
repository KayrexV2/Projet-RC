# changement skin recul et chauffe
execute as @s[scores={pkcd=1},tag=snipcd, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2001"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2007"]}]
execute as @s[scores={pkcd=1},tag=snipcd, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2002"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2006"]}]

# changement skin fin recul
execute as @s[scores={pkcd=6},tag=snipcd, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2007"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2004"]}]



# changement skin fin cd
## no scope
# energie 30+
execute as @s[tag=snipcd,scores={pkcd=40,mana=30..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
execute as @s[tag=snipcd,scores={pkcd=40,mana=30..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}]},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
# energie 29-
execute as @s[tag=snipcd,scores={pkcd=40,mana=..29}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2003"]}]
execute as @s[tag=snipcd,scores={pkcd=40,mana=..29}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}]},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2003"]}]

## scope
# energie 30+
execute as @s[tag=snipcd,scores={pkcd=40,mana=30..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2006"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2002"]}]
# energie 29-
execute as @s[tag=snipcd,scores={pkcd=40,mana=..29}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2006"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2005"]}]

tag @s add skin_verif