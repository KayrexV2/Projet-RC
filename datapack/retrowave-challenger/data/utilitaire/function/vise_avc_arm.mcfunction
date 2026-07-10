# sneak ralentissement v21
execute as @s[nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{v21:1b}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.060
execute as @s[nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{v21:1b}}}}] if predicate utilitaire:sneak run item replace entity @s weapon with ender_eye[custom_data={arme:1b,v21:1b},custom_model_data={strings:["2002"]}]
execute as @s[nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{v21:1b}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.1
execute as @s[nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{v21:1b},"minecraft:custom_model_data":{strings:["2002"]}}}}] unless predicate utilitaire:sneak run item replace entity @s weapon with ender_eye[custom_data={arme:1b,v21:1b},custom_model_data={strings:["2001"]}]

# sneak ralentissement mk1
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.060
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3001"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3002"]}]
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.1
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]

# sneak ralentissement pk1
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.060
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3001"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3002"]}]
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.1
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]

# ae protect
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_data":{ae:1b}}}}] run function weapons:arcelite/ae_protect

execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",components:{"minecraft:custom_data":{ae:1b}}}]}] run function weapons:arcelite/ae_protect


