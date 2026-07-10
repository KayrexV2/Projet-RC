# advancement si il y a
advancement revoke @s only utilitaire:observation_arme
advancement revoke @s only utilitaire:observation_arme_endereye
# Slot 0
execute as @s unless data entity @s Inventory[{Slot:0b}] run tag @s add inspec-arme1
execute as @s[tag=inspec-arme1] run item replace entity @s hotbar.0 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme1] weapon.offhand with air
tag @s[tag=!inspec-arme1] add inspec-arme-vide

# Slot 1
execute as @s unless data entity @s[tag=!inspec-arme1] Inventory[{Slot:1b}] run tag @s add inspec-arme2
tag @s[tag=inspec-arme2,tag=!inspec-arme1] remove inspec-arme-vide
execute as @s[tag=inspec-arme2,tag=!inspec-arme1] run item replace entity @s hotbar.1 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme2,tag=!inspec-arme1] weapon.offhand with air
tag @s[tag=!inspec-arme1,tag=!inspec-arme2] add inspec-arme-vide

# Slot 2
execute as @s unless data entity @s[tag=!inspec-arme1,tag=!inspec-arme2] Inventory[{Slot:2b}] run tag @s add inspec-arme3
tag @s[tag=inspec-arme3,tag=!inspec-arme1,tag=!inspec-arme2] remove inspec-arme-vide
execute as @s[tag=inspec-arme3,tag=!inspec-arme1,tag=!inspec-arme2] run item replace entity @s hotbar.2 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme3,tag=!inspec-arme1,tag=!inspec-arme2] weapon.offhand with air
tag @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3] add inspec-arme-vide

# Slot 3
execute as @s unless data entity @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3] Inventory[{Slot:3b}] run tag @s add inspec-arme4
tag @s[tag=inspec-arme4,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3] remove inspec-arme-vide
execute as @s[tag=inspec-arme4,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3] run item replace entity @s hotbar.3 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme4,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3] weapon.offhand with air
tag @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4] add inspec-arme-vide

# Slot 4
execute as @s unless data entity @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4] Inventory[{Slot:4b}] run tag @s add inspec-arme5
tag @s[tag=inspec-arme5,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4] remove inspec-arme-vide
execute as @s[tag=inspec-arme5,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4] run item replace entity @s hotbar.4 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme5,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4] weapon.offhand with air
tag @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5] add inspec-arme-vide

# Slot 5
execute as @s unless data entity @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5] Inventory[{Slot:5b}] run tag @s add inspec-arme6
tag @s[tag=inspec-arme6,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5] remove inspec-arme-vide
execute as @s[tag=inspec-arme6,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5] run item replace entity @s hotbar.5 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme6,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5] weapon.offhand with air
tag @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6] add inspec-arme-vide

# Slot 6
execute as @s unless data entity @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6] Inventory[{Slot:6b}] run tag @s add inspec-arme7
tag @s[tag=inspec-arme7,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6] remove inspec-arme-vide
execute as @s[tag=inspec-arme7,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6] run item replace entity @s hotbar.6 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme7,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6] weapon.offhand with air
tag @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7] add inspec-arme-vide

# Slot 7
execute as @s unless data entity @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7] Inventory[{Slot:7b}] run tag @s add inspec-arme8
tag @s[tag=inspec-arme8,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7] remove inspec-arme-vide
execute as @s[tag=inspec-arme8,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7] run item replace entity @s hotbar.7 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme8,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7] weapon.offhand with air
tag @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7,tag=!inspec-arme8] add inspec-arme-vide

# Slot 8
execute as @s unless data entity @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7,tag=!inspec-arme8] Inventory[{Slot:8b}] run tag @s add inspec-arme9
tag @s[tag=inspec-arme9,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7,tag=!inspec-arme8] remove inspec-arme-vide
execute as @s[tag=inspec-arme9,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7,tag=!inspec-arme8] run item replace entity @s hotbar.8 from entity @s weapon.offhand
item replace entity @s[tag=inspec-arme9,tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7,tag=!inspec-arme8] weapon.offhand with air
tag @s[tag=!inspec-arme1,tag=!inspec-arme2,tag=!inspec-arme3,tag=!inspec-arme4,tag=!inspec-arme5,tag=!inspec-arme6,tag=!inspec-arme7,tag=!inspec-arme8,tag=!inspec-arme9] add inspec-arme-vide


# supr tag
tag @s remove inspec-arme1
tag @s remove inspec-arme2
tag @s remove inspec-arme3
tag @s remove inspec-arme4
tag @s remove inspec-arme5
tag @s remove inspec-arme6
tag @s remove inspec-arme7
tag @s remove inspec-arme8
tag @s remove inspec-arme9

# plus de place dans hotbar
execute as @s[tag=inspec-arme-vide] at @s run summon minecraft:marker ^ ^1 ^1 {Tags:[inspec_arme_marker]}
execute as @e[type=marker, tag=inspec_arme_marker] at @s unless block ~ ~ ~ #utilitaire:air run function utilitaire:tp_air

execute at @s[tag=inspec-arme-vide] run execute at @e[type=minecraft:marker,tag=inspec_arme_marker,limit=1,sort=nearest] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_button",components:{custom_data:{inspec_arme_item:1b}}}}
kill @e[type=marker, tag=inspec_arme_marker]

execute as @s[tag=inspec-arme-vide] at @s run execute as @e[type=item,sort=nearest,distance=..3] if items entity @s container.0 stone_button[minecraft:custom_data={inspec_arme_item:1b}] run data modify entity @s Item set from entity @p[tag=inspec-arme-vide] Inventory[{Slot:-106b}]

item replace entity @s[tag=inspec-arme-vide] weapon.offhand with air
tag @s[tag=inspec-arme-vide] remove inspec-arme-vide


# modifier composant item dans main principal 
#execute as @a if items entity @s weapon *[!minecraft:food] run item modify entity @s weapon {function:"minecraft:set_components", components: {}}
#item modify entity @s weapon {function:"minecraft:set_components", components: {custom_data:{arme:1b}}}

# détécter un item avec un tag spé au sol
#execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".inspec_arme_item run say yesnnnn