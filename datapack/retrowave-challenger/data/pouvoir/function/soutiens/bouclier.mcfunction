
# vie du bouclié
scoreboard players add @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] st 1
tag @e[type=armor_stand,tag=stbalise_sol,tag=!antiondechoc] add antiondechoc

# vfx



# repousse
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[tag=mob,dx=4.2,dy=4.2,dz=4.2] run data modify entity @s Motion set value [0.2,0.0,0.2]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[tag=mob,dx=-4.2,dy=4.2,dz=-4.2] run data modify entity @s Motion set value [-0.2,0.0,-0.2]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[tag=mob,dx=-4.2,dy=4.2,dz=4.2] run data modify entity @s Motion set value [-0.2,0.0,0.2]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[tag=mob,dx=4.2,dy=4.2,dz=-4.2] run data modify entity @s Motion set value [0.2,0.0,-0.2]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[tag=mob,dx=3,dy=3,dz=3] run data modify entity @s Motion set value [0.6,0.0,0.6]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[tag=mob,dx=-3,dy=3,dz=-3] run data modify entity @s Motion set value [-0.6,0.0,-0.6]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[tag=mob,dx=-3,dy=3,dz=3] run data modify entity @s Motion set value [-0.6,0.0,0.6]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @e[tag=mob,dx=3,dy=3,dz=-3] run data modify entity @s Motion set value [0.6,0.0,-0.6]

# buissons ardent


# régène
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..40}] at @s run execute as @a[distance=..4.2,tag=!inBP] run effect give @s regeneration 16 2
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..40}] at @s run execute as @a[distance=..4.2,tag=!inBP] run effect give @s saturation 16 2

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=41..80}] at @s run execute as @a[distance=..4.2,tag=!inBP] run effect give @s regeneration 12 2
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=41..80}] at @s run execute as @a[distance=..4.2,tag=!inBP] run effect give @s saturation 12 2


execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @a[distance=..4.2] run tag @s add inBP

# mana et buisson ardent
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=1}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run scoreboard players add @s mana 20
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=1}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run playsound block.beacon.power_select ambient @a ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=1}] at @s run execute as @a[distance=..1] run damage @s 2 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=10}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run scoreboard players add @s mana 20
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=10}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run playsound block.beacon.power_select ambient @a ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=10}] at @s run execute as @a[distance=..1] run damage @s 2.5 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=20}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run scoreboard players add @s mana 20
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=20}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run playsound block.beacon.power_select ambient @a ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=20}] at @s run execute as @a[distance=..1] run damage @s 3 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=30}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run scoreboard players add @s mana 20
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=30}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run playsound block.beacon.power_select ambient @a ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=30}] at @s run execute as @a[distance=..1] run damage @s 3.5 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=40}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run scoreboard players add @s mana 20
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=40}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run playsound block.beacon.power_select ambient @a ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=40}] at @s run execute as @a[distance=..1] run damage @s 4 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=50}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run scoreboard players add @s mana 20
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=50}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run playsound block.beacon.power_select ambient @a ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=50}] at @s run execute as @a[distance=..1] run damage @s 4.5 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=60}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run scoreboard players add @s mana 20
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=60}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run playsound block.beacon.power_select ambient @a ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=60}] at @s run execute as @a[distance=..1] run damage @s 5 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=70}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run scoreboard players add @s mana 20
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=70}] at @s run execute as @a[distance=..4.2,scores={mana=..120}] run playsound block.beacon.power_select ambient @a ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=70}] at @s run execute as @a[distance=..1] run damage @s 5.5 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=80}] at @s run execute as @a[distance=..1] run damage @s 6.5 on_fire by @e[type=armor_stand,tag=stbalise_sol,limit=1]

# fin de vie bouclier

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81}] run kill @e[type=item_display,tag=stbalise_bouclier_ouvert]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81}] run tag @e[type=item_display,tag=antikillfinbp,tag=bouclier_it] remove antikillfinbp
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!bpbeaukillstop] run schedule function pouvoir:soutiens/onde_de_choque_beau 1t
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!bpbeaukillstop] at @s run playsound ambiant_sounds:ambiante.bp-finish ambient @a[distance=..10] ~ ~ ~ 10 1

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81}] run tag @s add bpbeaukillstop

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81}] at @s if block ~ ~1.5 ~ light run setblock ~ ~1.5 ~ air

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] at @s run summon item_display ~ ~0.38 ~ {Tags:[stbalise_pied_ouvert],item:{id:"minecraft:warped_fungus_on_a_stick",count:1b,components:{"minecraft:custom_model_data":{strings:["10002"]}},item_display:"gui",transformation:{translation:[0f,0f,0.4f],left_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],right_rotation:[0f,0f,0f,1f]}}}
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] at @s run summon minecraft:interaction ~ ~ ~ {Tags:[BP],width:0.6f,height:1.5f,CustomNameVisible:0b}

# repousse fin de bouclier

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] at @s run execute as @e[tag=mob,dx=4.5,dy=4.5,dz=4.5] run data modify entity @s Motion set value [0.6,0.2,0.6]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] at @s run execute as @e[tag=mob,dx=-4.5,dy=4.5,dz=-4.5] run data modify entity @s Motion set value [-0.6,0.2,-0.6]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] at @s run execute as @e[tag=mob,dx=-4.5,dy=4.5,dz=4.5] run data modify entity @s Motion set value [-0.6,0.2,0.6]
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] at @s run execute as @e[tag=mob,dx=4.5,dy=4.5,dz=-4.5] run data modify entity @s Motion set value [0.6,0.2,-0.6]

execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] at @s run execute as @e[tag=mob,distance=..6] run effect give @s slowness 15 2
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] at @s run execute as @e[tag=mob,distance=..6] run effect give @s weakness 15 2

# dernière action bouclier
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=81},tag=!finbouclier] run tag @s add finbouclier

execute as @e[type=minecraft:interaction,tag=BP,limit=1] on target run tag @a[scores={st=1..}] add finBP
data remove entity @e[type=minecraft:interaction,limit=1,tag=BP] interaction



# fin de pouvoir
execute as @a[tag=finBP] run kill @e[type=interaction,tag=BP]
execute as @a[tag=finBP] run kill @e[type=item_display,tag=stbalise_pied_ouvert]
execute as @a[tag=finBP] run kill @e[type=armor_stand,tag=stbalise_sol]
execute as @a[tag=finBP] run give @s minecraft:warped_fungus_on_a_stick[ minecraft:custom_data={st:1b},minecraft:custom_model_data={strings:["10001"]}]
execute as @a[tag=finBP] run tag @s remove inBP

execute as @a[tag=finBP] run tag @s remove finBP

# boucle
execute as @e[type=armor_stand,tag=stbalise_sol,scores={st=..80}] at @s run execute as @a[scores={mana=120..},distance=..4.2] run scoreboard players set @s mana 120
execute as @e[type=armor_stand,tag=stbalise_sol] run schedule function pouvoir:soutiens/bouclier 2t