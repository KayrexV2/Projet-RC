
execute as @a[distance=0.., nbt={Inventory:[{Slot:-106b,id:"minecraft:rabbit_foot",components:{"minecraft:custom_data":{sn:1b}}}]},scores={superninjaCooldown=1..},nbt=!{SelectedItem:{id:"minecraft:rabbit_foot", components:{"minecraft:custom_data":{sn:1b}}}}] if predicate utilitaire:sneak run function pouvoir:superninja/superninja
execute as @a[nbt={SelectedItem:{id:"minecraft:rabbit_foot",components:{"minecraft:custom_data":{sn:1b}}}},scores={superninjaCooldown=1..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:rabbit_foot", components:{"minecraft:custom_data":{sn:1b}}},distance=0..]}] if predicate utilitaire:sneak run function pouvoir:superninja/superninja

execute as @a[scores={superninjaCooldown=1..}] run function pouvoir:superninja/usedetect_droit_line_5
