#fin de boucle
tag @s add finboucle
scoreboard players set @s st 0
schedule clear pouvoir:soutiens/boucle

#changement skin
execute as @e[type=armor_stand,tag=stbalise_sol] run kill @e[type=item_display,tag=stbalise_pied_ouvert]
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run summon item_display ~ ~0.38 ~ {Tags:[stbalise_bouclier_ouvert], CustomName:'{"text":"stbalise_bouclier_ouvert"}',item:{id:"minecraft:warped_fungus_on_a_stick",count:1b,components:{"minecraft:custom_model_data":{strings:["10003"]},"minecraft:custom_data":{stbalise_bouclier_ouvert:1b}}},item_display:"gui",transformation:{translation:[0f,0f,0.4f],left_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],right_rotation:[0f,0f,0f,1f]}}

# son
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run playsound ambiant_sounds:ambiante.bp-start-2 ambient @a[distance=..10] ~ ~ ~ 10 1.7
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run playsound ambiant_sounds:ambiante.bp-marche ambient @a[distance=..10] ~ ~ ~ 10 1

# bouclier
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run summon item_display ~ ~0.52 ~ {CustomName:'{"text":"bouclier"}', Tags:[bouclier_it], item:{id:"minecraft:rabbit_foot",count:1b,components:{"minecraft:custom_model_data":{strings:["10004"]},"minecraft:custom_data":{bouclier_it:1b}}},item_display:"gui",transformation:{translation:[0f,0.2f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.1f,0.1f,0.1f],right_rotation:[0f,0f,0f,1f]}}
tag @e[type=item_display,tag=bouclier_it] add antikillfinbp
schedule function pouvoir:soutiens/onde_de_choque_beau 1t

execute as @e[type=item_display,tag=bouclier_it] run schedule function pouvoir:soutiens/onde_de_choque_beau 1t
execute as @e[type=armor_stand,tag=stbalise_sol] at @s if block ~ ~1.5 ~ #utilitaire:air run setblock ~ ~1.5 ~ light

# onde de choque
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run execute as @e[tag=sttarget,dx=7.5,dy=7.5,dz=7.5] run data modify entity @s Motion set value [0.8,0.8,0.8]
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run execute as @e[tag=sttarget,dx=-7.5,dy=7.5,dz=-7.5] run data modify entity @s Motion set value [-0.8,0.8,-0.8]
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run execute as @e[tag=sttarget,dx=-7.5,dy=7.5,dz=7.5] run data modify entity @s Motion set value [-0.8,0.8,0.8]
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run execute as @e[tag=sttarget,dx=7.5,dy=7.5,dz=-7.5] run data modify entity @s Motion set value [0.8,0.8,-0.8]

execute as @e[type=armor_stand,tag=stbalise_sol] at @s run execute as @e[type=arrow,tag=!arrowplayer,nbt=!{inGround:1b},distance=4..6] at @s run particle dust{color:[0.486,0.776,1.0],scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run kill @e[type=arrow,tag=!arrowplayer,nbt=!{inGround:1b},distance=4..6]
execute as @e[type=armor_stand,tag=stbalise_sol] at @s run kill @e[type=fireball,distance=4..6]

#ia 
execute as @e[tag=mob,tag=sttarget] run data merge entity @s {NoAI:0b}
tag @e[tag=sttarget] remove sttarget

# fin
schedule function pouvoir:soutiens/bouclier 5t



