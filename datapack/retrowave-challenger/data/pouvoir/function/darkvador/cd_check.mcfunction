scoreboard players set @a[scores={dvcd=1..}] DVuse 80
scoreboard players set @a[scores={dvcd=1..}] dvcd 6

execute as @a[scores={dvcd=1..,DVuse=80},nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_model_data":{strings:["1002"]}}}}] run item replace entity @s weapon.mainhand with ender_eye[minecraft:custom_data={DV:1b},minecraft:custom_model_data={strings:["1001"]}]
execute as @a[scores={dvcd=1..,DVuse=80},nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_eye",components:{"minecraft:custom_model_data":{strings:["1002"]}}}]}] run item replace entity @s weapon.offhand with ender_eye[minecraft:custom_data={DV:1b},minecraft:custom_model_data={strings:["1001"]}]

schedule function pouvoir:darkvador/cdvd 9s
