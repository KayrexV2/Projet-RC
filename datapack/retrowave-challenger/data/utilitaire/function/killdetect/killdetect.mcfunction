# SN detect

execute as @e[type=item,nbt={Item:{id:"minecraft:warped_button", components:{"minecraft:custom_data":{killsndetect:1b}}}},tag=!aefire] run function utilitaire:killdetect/killdetect_sn

#execute as @a[scores={superninjaCooldown=2..5,kd=1..},nbt={SelectedItem:{id:"minecraft:rabbit_foot", components:{"minecraft:custom_data":{sn:1b}}}}] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 100 1
#execute as @a[scores={superninjaCooldown=2..5,kd=1..},nbt={SelectedItem:{id:"minecraft:rabbit_foot", components:{"minecraft:custom_data":{sn:1b}}}}] run scoreboard players operation @s SNkill += @s kd
#execute as @a[scores={superninjaCooldown=2..5,kd=1..},nbt={SelectedItem:{id:"minecraft:rabbit_foot", components:{"minecraft:custom_data":{sn:1b}}}}] run scoreboard players set @s kd 0
#
#execute as @a[scores={superninjaCooldown=2..5,kd=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:rabbit_foot",components:{"minecraft:custom_data":{sn:1b}}}]}] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 100 1
#execute as @a[scores={superninjaCooldown=2..5,kd=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:rabbit_foot",components:{"minecraft:custom_data":{sn:1b}}}]}] run scoreboard players operation @s SNkill += @s kd
#execute as @a[scores={superninjaCooldown=2..5,kd=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:rabbit_foot",components:{"minecraft:custom_data":{sn:1b}}}]}] run scoreboard players set @s kd 0



# killdetect
#pk1
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{pk1:1b}}}},scores={kd=1..},tag=!aefire] run function utilitaire:killdetect/killdetect_pk1

#dark vador
execute as @a[nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{DV:1b}}}},scores={dvcd=1..,kd=1..}] run function utilitaire:killdetect/killdetect_dv

#ae detect
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_data":{ae:1b}}}},scores={kd=1..}] run function utilitaire:killdetect/killdetect_ae

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",components:{"minecraft:custom_data":{ae:1b}}}]},scores={kd=1..}] run function utilitaire:killdetect/killdetect_ae

#af detect
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_data":{af:1b}}}},scores={kd=1..},tag=affire] run function utilitaire:killdetect/killdetect_af

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",components:{"minecraft:custom_data":{af:1b}}}]},scores={kd=1..},tag=affire] run function utilitaire:killdetect/killdetect_af

#mg detect 
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:diamond_axe",components:{"minecraft:custom_data":{mg:1b}}}]},scores={kd=1..}] run function utilitaire:killdetect/killdetect_mg

execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_data":{mg:1b}}}},scores={kd=1..}] run function utilitaire:killdetect/killdetect_mg

#mk detect 
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}},scores={kd=1..}] run function utilitaire:killdetect/killdetect_mk

#v21 detect 
execute as @a[nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{v21:1b}}}},scores={kd=1..}] run function utilitaire:killdetect/killdetect_v21

#sniper detect 
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}},scores={kd=1..}] run function utilitaire:killdetect/killdetect_sniper

#main vide detect 
#execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:air"}]},scores={kd=1..}] run function utilitaire:killdetect/killdetect_air

#execute as @a[nbt={SelectedItem:{id:"minecraft:air"}},scores={kd=1..}] run function utilitaire:killdetect/killdetect_air

##autre_________________________


schedule function utilitaire:killdetect/killdetect 1t
