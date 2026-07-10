# check anti-cd
schedule clear pouvoir:darkvador/cd_check

# +1 utilisation
scoreboard players add @s[scores={dvcd=1..,DVuse=0..79}] DVuse 1
# skin item
execute as @s[scores={dvcd=1..,DVuse=1},nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_model_data":{strings:["1001"]}}}}] run item replace entity @s weapon.mainhand with ender_eye[minecraft:custom_data={DV:1b},minecraft:custom_model_data={strings:["1002"]}]
execute as @s[scores={dvcd=1..,DVuse=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_eye",components:{"minecraft:custom_model_data":{strings:["1001"]}}}]}] run item replace entity @s weapon.offhand with ender_eye[minecraft:custom_data={DV:1b},minecraft:custom_model_data={strings:["1002"]}]

# tag
execute at @s[scores={dvcd=1..5}] run summon area_effect_cloud ^ ^ ^5.5 {Duration:1,Tags:[dv1]}
execute at @s[scores={dvcd=1..5}] run tp @s ^ ^ ^ facing entity @e[tag=dv1,type=area_effect_cloud,limit=1] feet

# vecteur vitesse

execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[tag=mob, limit=20, dx=5.5,dy=-5.5,dz=5.5] at @s run data modify entity @s Motion set value [-0.03,0.03,-0.03]
execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[tag=mob, limit=20, dx=-5.5,dy=-5.5,dz=-5.5] at @s run data modify entity @s Motion set value [0.03,0.03,0.03]
execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[tag=mob, limit=20, dx=-5.5,dy=-5.5,dz=5.5] at @s run data modify entity @s Motion set value [0.03,0.03,-0.03]
execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[tag=mob, limit=20, dx=5.5,dy=-5.5,dz=-5.5] at @s run data modify entity @s Motion set value [-0.03,0.03,0.03]
#execute at @e[type=area_effect_cloud,tag=dv1] run execute as @e[distance=..09, tag=mob] at @s run tp @s ~ ~ ~


# dgts mob
execute if entity @s[tag=DVutilisation,scores={DVuse=5,dvcd=1}] run function pouvoir:darkvador/dgt1
execute if entity @s[tag=DVutilisation,scores={DVuse=5,dvcd=1}] run scoreboard players set @s dvcd 2
#execute if entity @s[tag=DVutilisation,scores={DVuse=5,dvcd=2}] run schedule function pouvoir:darkvador/cd_check 30t

execute if entity @s[tag=DVutilisation,scores={DVuse=25,dvcd=2}] run schedule clear pouvoir:darkvador/cd_check
execute if entity @s[tag=DVutilisation,scores={DVuse=25,dvcd=2}] run function pouvoir:darkvador/dgt1
execute if entity @s[tag=DVutilisation,scores={DVuse=25,dvcd=2}] run scoreboard players set @s dvcd 3
#execute if entity @s[tag=DVutilisation,scores={DVuse=25,dvcd=3}] run schedule function pouvoir:darkvador/cd_check 30t

execute if entity @s[tag=DVutilisation,scores={DVuse=45,dvcd=3}] run schedule clear pouvoir:darkvador/cd_check
execute if entity @s[tag=DVutilisation,scores={DVuse=45,dvcd=3}] run function pouvoir:darkvador/dgt1
execute if entity @s[tag=DVutilisation,scores={DVuse=45,dvcd=3}] run scoreboard players set @s dvcd 4
#execute if entity @s[tag=DVutilisation,scores={DVuse=45,dvcd=4}] run schedule function pouvoir:darkvador/cd_check 30t

execute if entity @s[tag=DVutilisation,scores={DVuse=65,dvcd=4}] run schedule clear pouvoir:darkvador/cd_check
execute if entity @s[tag=DVutilisation,scores={DVuse=65,dvcd=4}] run function pouvoir:darkvador/dgt1
execute if entity @s[tag=DVutilisation,scores={DVuse=65,dvcd=4}] run scoreboard players set @s dvcd 5
#execute if entity @s[tag=DVutilisation,scores={DVuse=65,dvcd=5}] run schedule function pouvoir:darkvador/cd_check 30t

execute if entity @s[tag=DVutilisation,scores={DVuse=79,dvcd=5}] run schedule clear pouvoir:darkvador/cd_check
execute if entity @s[tag=DVutilisation,scores={DVuse=79,dvcd=5}] run function pouvoir:darkvador/dgt1
execute if entity @s[tag=DVutilisation,scores={DVuse=79,dvcd=5}] run scoreboard players set @s dvcd 6

# skin item
execute as @s[scores={dvcd=1..,DVuse=79},nbt={SelectedItem:{id:"minecraft:ender_eye",components:{"minecraft:custom_model_data":{strings:["1002"]}}}}] run item replace entity @s weapon.mainhand with ender_eye[minecraft:custom_data={DV:1b},minecraft:custom_model_data={strings:["1001"]}]
execute as @s[scores={dvcd=1..,DVuse=79},nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_eye",components:{"minecraft:custom_model_data":{strings:["1002"]}}}]}] run item replace entity @s weapon.offhand with ender_eye[minecraft:custom_data={DV:1b},minecraft:custom_model_data={strings:["1001"]}]

# fin
 
effect give @s[scores={dvcd=1..}] resistance 1 3
effect give @s[scores={dvcd=1..}] slowness 1 2 true


execute if entity @s[tag=DVutilisation,scores={DVuse=..79,dvcd=1..}] run advancement revoke @s only pouvoir:darkvador
execute if entity @s[tag=DVutilisation,scores={DVuse=..79,dvcd=1..}] run schedule function pouvoir:darkvador/cdvd 10s

# check cd

execute if entity @s[tag=DVutilisation,scores={DVuse=1..,dvcd=1..}] run schedule function pouvoir:darkvador/cd_check 3t
