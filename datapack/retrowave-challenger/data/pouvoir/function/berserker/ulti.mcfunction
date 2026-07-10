tag @s remove bkcd
tag @s add bkuse
tag @s add bkulti
effect give @s speed 20 2
effect give @s strength 20 4
effect give @s jump_boost 20 1
effect give @s instant_health 1 4
effect give @s resistance 20 3 true
scoreboard players add @s[scores={mana=..32}] mana 32 

schedule function pouvoir:berserker/cdeg 1t
schedule function pouvoir:berserker/bkulticd 20s

# fin
advancement revoke @s only pouvoir:berserker