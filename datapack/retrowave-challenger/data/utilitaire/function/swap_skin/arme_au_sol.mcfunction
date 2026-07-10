# sniper
execute as @s if data entity @s Item.components."minecraft:custom_data".sniper run data modify entity @s Item.components."minecraft:custom_model_data" set value {strings:["2003"]}
execute as @s if data entity @s Item.components."minecraft:custom_data".sniper run data modify entity @s Item.components."minecraft:custom_data" set value {arme_au_sol:1b,sniper:1b,arme:1b}

# pk1
execute as @s if data entity @s Item.components."minecraft:custom_data".pk1 run data modify entity @s Item.components."minecraft:custom_model_data" set value {strings:["1009"]}
execute as @s if data entity @s Item.components."minecraft:custom_data".pk1 run data modify entity @s Item.components."minecraft:custom_data" set value {arme_au_sol:1b,pk1:1b,arme:1b}