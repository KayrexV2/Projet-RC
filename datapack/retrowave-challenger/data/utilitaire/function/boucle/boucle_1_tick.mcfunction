## détection changement curentSlotSelect
execute as @a store result score @s SelectedItemSlot run data get entity @s SelectedItemSlot
execute as @a if score @s SelectedItemSlot = @s SelectedItemSlot2 run tag @s add curentSlotSelect
execute as @a[tag=!curentSlotSelect] run tag @s remove skin_verif
execute as @a[tag=!curentSlotSelect] run execute as @s store result score @s SelectedItemSlot2 run data get entity @s SelectedItemSlot
tag @a remove curentSlotSelect


## début système changement de skin
# reset si sneak ou pas
execute as @a[tag=!sneak_on,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b}}}}] if predicate utilitaire:sneak run function utilitaire:swap_skin/choix_skin_et_status
execute as @a if predicate utilitaire:sneak run tag @s[tag=!sneak_on] add sneak_on
execute as @a if predicate utilitaire:sneak run tag @s[tag=sneak_on, tag=sneak_off] remove sneak_off

execute as @a[tag=!sneak_off,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b}}}}] unless predicate utilitaire:sneak run function utilitaire:swap_skin/choix_skin_et_status
execute as @a unless predicate utilitaire:sneak run tag @s[tag=!sneak_off] add sneak_off
execute as @a unless predicate utilitaire:sneak run tag @s[tag=sneak_off, tag=sneak_on] remove sneak_on

# vérif statue skin prise en main de l'arme
execute as @a[tag=!skin_verif,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b}}}}] run function utilitaire:swap_skin/choix_skin_et_status
execute as @a[tag=!skin_verif,nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b}}}]}] run function utilitaire:swap_skin/choix_skin_et_status
# explication : on verifie si le joueur qui tient uen arme à le tag attestant que le skin de son arme a été mis à jour
# le tag se met quand les confition sont effectives dans les fonctions de changement de skin propre à chaque arme
# l'absence de tag force la mise à jour du skin de l'arme en fonction de l'arme puis du skin (suivre le chemin d'appel de fonction qui d'émar ici)




# attribut reset
execute as @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b}}}},tag=skop ] run attribute @s minecraft:movement_speed base set 0.1
execute as @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme:1b}}}},tag=skop ] run tag @s remove skop

# traceur br
execute as @e[type=zombie, tag=mob] if predicate utilitaire:tracear/traceur_br run say yes






# attribution score hyper sword
execute as @a[scores={hs=0}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}]}] run scoreboard players set @s hs 1

# summon hitbox hypersword
execute as @a[scores={hs=1}] at @s run function weapons:hypersword/hs_invoc

# quand le joueur ne tiens plus hs
execute as @a[scores={hs=1..2}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}]}] run kill @e[type=minecraft:interaction,tag=hshitbox,limit=1, sort=nearest]
execute as @a[scores={hs=1..2}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}]}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}}] run kill @e[type=minecraft:interaction,tag=hshitbox,limit=1, sort=nearest]


execute as @a[scores={hs=1..2}, nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}]}] run scoreboard players set @s hs 0
execute as @a[scores={hs=1..2}, nbt=!{Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}]}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{hs:1b}}}}] run scoreboard players set @s hs 0

# boucle hypersword
execute as @a[scores={hs=1..}] run function weapons:hypersword/hs_boucle


# boucle

schedule function utilitaire:boucle/boucle_1_tick 1t