## si tag arme_au_sol
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{arme_au_sol:1b}}}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]


## ____________reprise en main de skin interdit_________________


#no scop
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2007"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2006"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
# scop
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2002"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2007"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2002"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2006"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2002"]}]




## ______________ verif reprise en main et sneack ______________________



## reprise en main de skin interdit
#no scop
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2007"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
# scop
execute as @s[scores={pkcd=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2006"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2002"]}]


# changement skin recul et chauffe
execute as @s[scores={pkcd=1},tag=snipcd, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2001"]}}}},tag=!bkdback,tag=!bkddeant] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2007"]}]
execute as @s[scores={pkcd=1},tag=snipcd, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2002"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2006"]}]

# changement skin fin recul
execute as @s[scores={pkcd=12},tag=snipcd, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2007"]}}}},tag=!bkdback,tag=!bkddeant] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2004"]}]



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







## pas de scope en main gauche
execute as @s[scores={mana=30..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2002"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
execute as @s[scores={mana=..29}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2005"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2003"]}]
# surchauffe
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2006"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2004"]}]
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2007"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2004"]}]



## no scope vers skope
execute as @s[tag=!skop, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.0002
execute as @s[tag=!skop, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run tag @s add skop
# 30+
execute as @s[scores={mana=30..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2001"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2002"]}]
# 29-
execute as @s[scores={mana=..29}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2003"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2005"]}]
# surchauffe
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2006"]}]
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2007"]}}}},tag=!bkdback,tag=!bkddeant] if predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2006"]}]



## skope vers no skope
execute as @s[tag=skop, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}}] unless predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.1
execute as @s[tag=skop, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}]}] unless predicate utilitaire:sneak run attribute @s minecraft:movement_speed base set 0.1
execute as @s[tag=skop, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}}] unless predicate utilitaire:sneak run tag @s remove skop
# 30+
execute as @s[scores={mana=30..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2002"]}}}}] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
# 29-
execute as @s[scores={mana=..29}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2005"]}}}}] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2003"]}]
# surchauffe
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2006"]}}}}] unless predicate utilitaire:sneak run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2004"]}]



## 30+ vers 29-
execute as @s[scores={mana=..29}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2001"]}}}}] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2003"]}]
execute as @s[scores={mana=..29}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2001"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2003"]}]
# surchauffe
execute as @s[tag=!snipcd, scores={mana=..29}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2003"]}]
execute as @s[tag=!snipcd, scores={mana=..29}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}}] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2003"]}]



## 29- vers 30+
execute as @s[scores={mana=30..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2003"]}}}}] run item replace entity @s weapon with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
execute as @s[scores={mana=30..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2003"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]
# surchauffe
execute as @s[tag=!snipcd,scores={mana=30..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{sniper:1b},"minecraft:custom_model_data":{strings:["2004"]}}}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[ custom_data={arme:1b,sniper:1b},custom_model_data={strings:["2001"]}]

tag @s add skin_verif