# skin arme par terre
execute at @a run execute as @e[type=item, distance=..5,sort=nearest] if data entity @s Item.components."minecraft:custom_data".arme unless data entity @s Item.components."minecraft:custom_data".arme_au_sol run function utilitaire:swap_skin/arme_au_sol

## enlever tag arme au sol

schedule function utilitaire:boucle/boucle1seconde 1s
