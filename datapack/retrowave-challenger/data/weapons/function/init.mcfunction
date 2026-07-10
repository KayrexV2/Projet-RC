advancement revoke @a only weapons:protokol
advancement revoke @a only weapons:lanceenergetique
advancement revoke @a only weapons:autopercuteur
advancement revoke @a only weapons:v-21
function weapons:diff_armedelance

scoreboard objectives add Armedelance minecraft.used:minecraft.trident
scoreboard players set @a Armedelance 0


scoreboard objectives add lanceenergetique dummy
scoreboard players set @a lanceenergetique 0


scoreboard objectives add arbalete minecraft.used:minecraft.crossbow
scoreboard players set @a arbalete 0

scoreboard objectives add reculearme dummy
scoreboard players set @a reculearme 0

scoreboard objectives add clickdroit minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add pkkill dummy
scoreboard objectives add pkcd dummy

scoreboard objectives add ae dummy
scoreboard objectives add aekill dummy

scoreboard objectives add af dummy
scoreboard objectives add afkill dummy

scoreboard objectives add mg dummy
scoreboard players set @a mg 0
scoreboard objectives add mgkill dummy

scoreboard objectives add v21 dummy
scoreboard objectives add v21kill dummy

scoreboard objectives add mk dummy
scoreboard objectives add mkkill dummy

scoreboard objectives add arcdetect minecraft.used:minecraft.bow
scoreboard objectives add rc dummy

scoreboard objectives add sniperkill dummy

scoreboard objectives add mainkill dummy

scoreboard objectives add hs dummy
scoreboard objectives add hskill dummy
scoreboard players set @a hs 0

tag @a add skin_snip1
tag @a add skin_pk1
tag @a add skin_mk1

tag @a remove pk1use2
tag @a remove pk1use
