## si tag arme_au_sol
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme_au_sol:1b}}}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]


## ____________reprise en main de skin interdit_________________


#no scop
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3003"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3006"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
# scop
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3005"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3003"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3005"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3006"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3005"]}]




## ______________ verif reprise en main et sneack ______________________



## reprise en main de skin interdit
#no scop
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3003"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
# scop
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3006"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3005"]}]


# changement skin recul et chauffe
execute as @s[scores={pkcd=1},tag=mkcd, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3001"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3003"]}]
execute as @s[scores={pkcd=1},tag=mkcd, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3005"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3006"]}]

# changement skin fin recul
execute as @s[scores={pkcd=6},tag=mkcd] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3002"]}]

# changement skin début refroidissement
execute as @s[scores={pkcd=8},tag=mkcd] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3004"]}]




# changement skin fin cd
## no scope
# energie 30+
execute as @s[tag=mkcd,scores={pkcd=10,mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3004"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
execute as @s[tag=mkcd,scores={pkcd=10,mana=12..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3004"]}}}]},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
# energie 29-
execute as @s[tag=mkcd,scores={pkcd=10,mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3004"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3008"]}]
execute as @s[tag=mkcd,scores={pkcd=10,mana=..11}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3004"]}}}]},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3008"]}]

## scope
# energie 30+
execute as @s[tag=mkcd,scores={pkcd=10,mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3006"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3005"]}]
# energie 29-
execute as @s[tag=mkcd,scores={pkcd=10,mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3006"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3007"]}]







## ______________ vérif en main or tir _______________________


## pas de scope en main gauche
execute as @s[scores={mana=12..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3005"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
execute as @s[scores={mana=..11}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3007"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3008"]}]
# surchauffe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3006"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3002"]}]
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3003"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3002"]}]



## no scope vers skope
execute as @s[tag=!skop, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.05
execute as @s[tag=!skop, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run tag @s add skop
# 30+
execute as @s[scores={mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3001"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3005"]}]
# 29-
execute as @s[scores={mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3008"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3007"]}]
# surchauffe
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3006"]}]
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3003"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3006"]}]



## skope vers no skope
execute as @s[tag=skop, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}}] unless predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.1
execute as @s[tag=skop, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}]}] unless predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.1
execute as @s[tag=skop, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b}}}}] unless predicate utilitaire:sneak run tag @s remove skop
# 30+
execute as @s[scores={mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3005"]}}}}] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
# 29-
execute as @s[scores={mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3007"]}}}}] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3008"]}]
# surchauffe
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3006"]}}}}] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3002"]}]



## 30+ vers 29-
execute as @s[scores={mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3001"]}}}}] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3008"]}]
execute as @s[scores={mana=..11}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3001"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3008"]}]
# surchauffe
execute as @s[tag=!mkcd, scores={mana=..11}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3008"]}]
execute as @s[tag=!mkcd, scores={mana=..11}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}}] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3008"]}]



## 29- vers 30+
execute as @s[scores={mana=12..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3008"]}}}}] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
execute as @s[scores={mana=12..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3008"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]
# surchauffe
execute as @s[tag=!mkcd,scores={mana=12..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{mk:1b},"minecraft:custom_model_data":{strings:["3002"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,mk:1b},custom_model_data={strings:["3001"]}]

tag @s add skin_verif