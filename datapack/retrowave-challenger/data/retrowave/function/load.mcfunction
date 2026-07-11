# Création globale des objectifs. Ces fonctions ne réinitialisent plus les joueurs.
function weapons:init
function utilitaire:init
function ui:init
function pouvoir:init

# Nettoyage des chaînes récursives avant leur redémarrage unique.
schedule clear retrowave:player_check
schedule clear ui:main
schedule clear weapons:diff_armedelance
schedule clear utilitaire:killdetect/killdetect
schedule clear utilitaire:boucle/boucle_1_tick
schedule clear utilitaire:boucle/boucle2tick
schedule clear utilitaire:boucle/boucle_3_tick
schedule clear utilitaire:boucle/boucle1seconde
schedule clear utilitaire:boucle/boucle_10_tick

function retrowave:player_check
function ui:main
function weapons:diff_armedelance
function utilitaire:killdetect/killdetect
function utilitaire:boucle/boucle_1_tick
function utilitaire:boucle/boucle2tick
function utilitaire:boucle/boucle_3_tick
function utilitaire:boucle/boucle1seconde
function utilitaire:boucle/boucle_10_tick
