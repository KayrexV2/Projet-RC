
# application des effets au tire
execute as @e[type=minecraft:trident,nbt={DealtDamage:true,inGround:false,Air:300s},tag=lanceenergetique] at @s store success entity @s Air short 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,CustomName:'{"text":"testL"}'}

# effet de la lance
execute at @e[name="testL"] run execute as @e[tag=mob,sort=nearest,limit=1] run tag @s add testL
execute at @e[name="testL"] run execute as @e[tag=testL] run effect give @s instant_health 1 2

# fin et récursives
execute if entity @a[nbt={SelectedItem:{id:"minecraft:trident", components:{"minecraft:custom_name":'"Lance énergétique"'}}}] run scoreboard players set @s Armedelance 0
execute if entity @a[nbt={SelectedItem:{id:"minecraft:trident", components:{"minecraft:custom_name":'"Lance énergétique"'}}}] run scoreboard players set @s lanceenergetique 1
execute if entity @a[nbt=!{SelectedItem:{id:"minecraft:trident", components:{"minecraft:custom_name":'"Lance énergétique"'}}}] run schedule function weapons:lanceenergetique/le_damage 1t
