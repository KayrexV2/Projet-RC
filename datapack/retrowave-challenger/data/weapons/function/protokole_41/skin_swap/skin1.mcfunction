## tire 1
# changement skin recul et chauffe TIRE 1
execute as @s[tag=!pkcd,tag=pk1use,tag=!pkuse2,scores={pkcd=1}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1001"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1004"]}]
execute as @s[tag=!pkcd,tag=pk1use,tag=!pkuse2,scores={pkcd=1}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1002"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1005"]}]
# changement skimn recule tire 1
execute as @s[tag=!pk1use2,tag=!pkcd,scores={pkcd=4}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1004"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1003"]}]


## changement skin tire 1 fin cd
## no scope
# energie 12+
execute as @s[tag=pk1use,tag=!pkcd,scores={pkcd=16,mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1003"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1001"]}]
execute as @s[tag=pk1use,tag=!pkcd,scores={pkcd=16,mana=12..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1003"]}}}]},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1001"]}]
# energie 11-
execute as @s[tag=pk1use,tag=!pkcd,scores={pkcd=16,mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1003"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1009"]}]
execute as @s[tag=pk1use,tag=!pkcd,scores={pkcd=16,mana=..11}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1003"]}}}]},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1009"]}]

# scope
# energie 12+
execute as @s[tag=pk1use,tag=!pkcd,scores={pkcd=16,mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1005"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1002"]}]
# energie 11-
execute as @s[tag=pk1use,tag=!pkcd,scores={pkcd=16,mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1005"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1010"]}]





## tire 2
# changement skin recul et chauffe TIRE 2 Dans recul tire 1
execute as @s[tag=pkcd,tag=pkuse2,scores={pkcd=51}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1007"]}]
# changement skin recul et chauffe TIRE 2 skop
execute as @s[tag=pkcd,tag=pkuse2,scores={pkcd=51}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1005"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1008"]}]

## changement skin fin recul tire 2
execute as @s[tag=pkcd,scores={pkcd=55}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1007"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1006"]}]


## changement skin tire 2 fin cd
## no scope
# energie 12+
execute as @s[scores={pkcd=81,mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1006"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1001"]}]
execute as @s[scores={pkcd=81,mana=12..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1006"]}}}]},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1001"]}]
# energie 11-
execute as @s[scores={pkcd=81,mana=..11}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1004"]}}}]},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1009"]}]
execute as @s[scores={pkcd=81,mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1004"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1009"]}]

## scope
# energie 12+
execute as @s[tag=pk1use,tag=!pkcd,scores={pkcd=81,mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1008"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1002"]}]
# energie 11-
execute as @s[tag=pk1use,tag=!pkcd,scores={pkcd=81,mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b},"minecraft:custom_model_data":{strings:["1008"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,pk1:1b},custom_model_data={strings:["1010"]}]


tag @s add skin_verif