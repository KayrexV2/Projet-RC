#data modify storage temp NPC_1.uses set value []
#data modify storage temp NPC_1.uses append from entity <NPC #1> Offers.Recipes[0].uses
#data modify storage temp NPC_1.uses append from entity <NPC #1> Offers.Recipes[1].uses
#data modify storage temp NPC_1.uses append from entity <NPC #1> Offers.Recipes[2].uses


#execute store success score .changed int run data modify storage map NPC_1.uses set from storage temp NPC_1.uses
#execute if score .changed matches 1 run tellraw @a {"text":"NPC #1 was traded with."}
#execute if score .changed matches 1 as <NPC #1> run say "It's true, a player traded with me."