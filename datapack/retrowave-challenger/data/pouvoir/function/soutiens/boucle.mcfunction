# tourner machine
execute as @e[type=minecraft:item_display,tag=bouclier_it] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[type=minecraft:item_display,tag=bouclier_it] run data merge entity @s {teleport_duration:2}
# score st stbalise_sol
scoreboard players add @e[type=armor_stand,tag=stbalise_sol,tag=!finboucle] st 1

# pied summon
execute as @e[type=armor_stand,tag=stbalise,nbt={OnGround:1b}] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Coeur énergétique"}',Invisible:1b,Invulnerable:1b,Tags:["stbalise_sol","markerstbalise"]}
#son déploiement
execute as @e[type=armor_stand,tag=stbalise_sol,tag=!stop_sounds_starts1] at @s run playsound ambiant_sounds:ambiante.bp-start-1 ambient @a[distance=..10] ~ ~ ~ 10 1.5
execute as @e[type=armor_stand,tag=stbalise_sol] run tag @s add stop_sounds_starts1

#tuer les anciens skin
execute as @e[type=armor_stand,tag=stbalise_sol] run kill @e[type=armor_stand,tag=stbalise]

execute as @e[type=armor_stand,tag=stbalise_sol,tag=!stbaliseur_skin] at @s run summon item_display ~ ~0.38 ~ {Tags:[stbalise_pied_ouvert],item:{id:"minecraft:warped_fungus_on_a_stick",count:1, components:{"minecraft:custom_model_data":{strings:["10002"]}}},item_display:"gui",transformation:{translation:[0f,0f,0.4f],left_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],right_rotation:[0f,0f,0f,1f]}}
execute as @e[type=armor_stand,tag=stbalise_sol] run kill @e[type=item_display,tag=stbalise_beau]

# summon new skin
execute as @e[type=item_display,tag=stbalise_pied_ouvert] run tag @e[type=armor_stand,tag=stbalise_sol] add stbaliseur_skin

# arrow kill
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[type=arrow,tag=!arrowplayer,nbt=!{inGround:1b},distance=4..6] at @s run particle dust{color:[0.486,0.776,1.0],scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0.01 2 force

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run kill @e[type=arrow,tag=!arrowplayer,nbt=!{inGround:1b},distance=4..6]

# fin
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=20},tag=!antiondechoc] run function pouvoir:soutiens/onde_de_choque

execute if entity @e[type=armor_stand, tag=markerstbalise] run schedule function pouvoir:soutiens/boucle 1t