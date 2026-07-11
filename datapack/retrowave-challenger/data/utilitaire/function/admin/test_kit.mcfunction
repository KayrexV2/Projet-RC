# Kit principal des objets actifs. À exécuter en tant que joueur avec /function utilitaire:admin/test_kit.

give @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={sniper:1b,arme:1b},minecraft:custom_model_data={strings:["2001"]}] 1
give @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={hs:1b,arme:1b},minecraft:custom_model_data={strings:["4001"]}] 1
give @s minecraft:crossbow[minecraft:custom_data={autopercuteur:1b,arme:1b},minecraft:custom_model_data={strings:["1001"]},minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}],minecraft:enchantments={"minecraft:quick_charge":5,"minecraft:piercing":3,"minecraft:infinity":1},minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]},minecraft:enchantment_glint_override=false] 1
give @s minecraft:bow[minecraft:custom_data={ae:1b,arme:1b},minecraft:custom_model_data={strings:["101"]}] 1
give @s minecraft:bow[minecraft:custom_data={af:1b,arme:1b}] 1
give @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={mk:1b,arme:1b},minecraft:custom_model_data={strings:["3001"]}] 1
give @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={pk1:1b,arme:1b},minecraft:custom_model_data={strings:["1001"]}] 1
give @s minecraft:ender_eye[minecraft:custom_data={v21:1b,arme:1b},minecraft:custom_model_data={strings:["2001"]}] 1
give @s minecraft:diamond_axe[minecraft:custom_data={mg:1b,arme:1b},minecraft:custom_model_data={strings:["1001"]}] 1
give @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={br:1b,arme:1b}] 1
give @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={st:1b},minecraft:custom_model_data={strings:["10001"]}] 1
give @s minecraft:trident[minecraft:custom_name='"Lance énergétique"'] 1
give @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={ce_niv1:1b},minecraft:custom_model_data={strings:["1"]}] 16

scoreboard players set @s mana 120
tag @s add skin_snip1
tag @s add skin_pk1
tag @s add skin_mk1

tellraw @s {"text":"Kit de test Retrowave 26.1.2 reçu.","color":"aqua"}
