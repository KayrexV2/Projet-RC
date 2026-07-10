function weapons:lanceenergetique/le_damage

# application des effets au tire
execute at @s run data modify entity @e[type=minecraft:trident,limit=1,sort=nearest] Tags append value "lanceenergetique"
execute as @e[type=minecraft:trident,nbt={DealtDamage:true,inGround:false,Air:300s},tag=lanceenergetique] at @s store success entity @s Air short 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,CustomName:'{"text":"LE_balise"}'}

# effet de la lance
execute at @e[name="LE_balise"] run execute as @e[tag=mob,sort=nearest,limit=1] run tag @s add testL
execute at @e[name="LE_balise"] run execute as @e[tag=testL] run effect give @s instant_health 1 2


# fin
advancement revoke @a only weapons:lanceenergetique
