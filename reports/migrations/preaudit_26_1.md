# Rapport Codex — Minecraft Java 26.1

## Décision rapide

- Version source déclarée : Minecraft Java Edition 1.21.4 probable.
- Version cible : Minecraft Java Edition 26.1.
- Édition : Java Edition uniquement.
- Risque global : critique avant toute migration.
- Périmètre : un datapack, un resource pack, 127 fichiers de fonction et 122 fichiers JSON inventoriés.
- Recommandation : réparer les points d'entrée et chemins historiques avant toute migration de contenu vers 26.1.

Ce document est un pré-audit en lecture seule. Aucun fichier de datapack ou resource pack n'est modifié.

## Changements critiques

### Points d'entrée

Les hooks sont placés sous data/minecraft/tags/functions. Depuis Java 1.21, le chemin attendu est data/minecraft/tags/function. Les tags load et tick peuvent donc être ignorés avant même d'atteindre leur contenu.

Les références suivantes sont déclarées mais aucun fichier exécutable correspondant n'est présent :

| Tag | Référence absente |
| --- | --- |
| load | pouvoir:superninja/init |
| load | pouvoir:darkvador/initdv |
| tick | pouvoir:tick |

Le fichier pouvoir:function/init.mcfunction existe, mais il n'est pas relié au tag load. L'initialisation des scoreboards de pouvoirs peut donc ne jamais s'exécuter.

### Références internes

L'analyse statique des appels de fonction a relevé trois références non résolues :

| Appel | État observé |
| --- | --- |
| pouvoir:superninja/usedetect_droit_line_5 | fichier absent |
| utilitaire:skin_weapons/arme_au_sol | fichier absent |
| weapons:hypersword/boucle | le fichier présent est hs_boucle.mcfunction |

Ces problèmes sont antérieurs à 26.1 et doivent être traités comme des erreurs fonctionnelles existantes.

### Dossiers de données historiques

| Chemin actuel | Chemin moderne attendu | Impact |
| --- | --- | --- |
| data/minecraft/tags/functions | data/minecraft/tags/function | hooks load/tick non chargés |
| data/utilitaire/item_modifiers | data/utilitaire/item_modifier | CMD_obj non enregistré |
| data/skin/functions | data/skin/function | module skin non enregistré |

Les répertoires function, advancement, predicate, loot_table, damage_type et tags/block déjà présents suivent la convention singulière.

## Migrations nécessaires

### Métadonnées

Le datapack déclare pack_format 48, supported_formats 61 et un overlay visant un dossier absent nommé retrowavechallenger v4 1.21.4. Le resource pack déclare pack_format 61.

Cette situation ne correspond pas à un projet strictement 1.21.4 : cette version utilise les formats datapack 61 et resource pack 46. Le projet mélange donc probablement des états de migration ou de compatibilité.

La cible Java 26.1 utilise les formats datapack 101.1 et resource pack 84.0. Les métadonnées modernes reposent sur min_format et max_format ; supported_formats et le format des overlays doivent être réévalués avant migration.

### Composants, commandes et données à revalider

- minecraft:custom_data et minecraft:custom_model_data dans les commandes data et les sélecteurs ;
- predicates d'items, advancements et triggers minecraft:using_item ;
- enchantments data-driven et fonctions de dégâts ;
- item modifier utilitaire:CMD_obj ;
- damage type utilitaire:bypass et le tag minecraft:bypasses_cooldown ;
- affichage title actionbar et police à caractères privés.

Ces éléments doivent être validés avec les schémas et un serveur 26.1 ; aucune compatibilité de syntaxe n'est supposée ici.

### Modèles référencés sans fichier

Le routeur assets/minecraft/items/warped_fungus_on_a_stick.json référence :

- utilitaire:item/cniv1-v2 ;
- utilitaire:item/cniv1-v11.

Les fichiers de modèles correspondants ne sont pas présents. Les états custom_model_data associés doivent être traités comme cassés jusqu'à vérification.

## Optimisations optionnelles

- Créer un répartiteur load unique qui appelle explicitement l'initialisation de chaque module.
- Centraliser les boucles 1, 2 et 3 ticks afin de rendre les chaînes schedule auditables et profilables.
- Uniformiser les noms historiques : ramdom, curentSlotSelect, skop et protokole.
- Documenter les assets actifs versus les archives old et itemold, sans suppression automatique.

## Nouvelles possibilités

- Le pack utilise déjà les définitions data-driven sous assets/minecraft/items pour router les états de modèles d'armes.
- Les advancements, predicates et enchantments offrent une base événementielle utilisable pour réduire les détecteurs en tick.
- La barre de mana est isolée dans le namespace ui et dans la police space, facilitant une QA visuelle indépendante.

## Fichiers modifiés ou proposés

Fichiers ajoutés par cette étape documentaire :

- reports/migrations/preaudit_26_1.md
- reports/official/architecture_overview.md

Fichiers de datapack ou resource pack modifiés : aucun.

## Diff résumé

- Ajout de deux rapports Markdown.
- Aucun changement de gameplay, JSON Minecraft, texture, modèle ou son.
- Aucun commit.

## Tests automatiques effectués

- Inventaire récursif des namespaces, fonctions, JSON et assets.
- Résolution statique des appels de fonction et des références de modèles actives.
- Vérification des tags load/tick et de la présence des fonctions désignées.
- Contrôle Git avant écriture : branche audit/architecture-26_1 propre.

La validation JSON complète par parseur externe n'a pas pu être faite : Node.js n'est pas disponible dans l'environnement. Le chargement par Minecraft reste donc nécessaire.

## Tests in-game à faire

1. Lancer /reload et relever les erreurs de tags, dossiers et références de fonctions.
2. Vérifier que les initialiseurs weapons, pouvoir, utilitaire et ui s'exécutent une seule fois.
3. Tester les boucles UI, mana, skins et Hyper Sword sans duplication de tâches schedule.
4. Tester tous les advancements d'armes/pouvoirs et les predicates sneak/traceur.
5. Vérifier les modèles custom_model_data 2 et 11 du warped_fungus_on_a_stick.
6. Tester le resource pack sans OptiFine puis avec la couche CEM/OptiFine prévue.

## Sources consultées

- docs/sources_minecraft_projet.md.
- prompts/00_preaudit.md.
- Minecraft Java Edition 1.21, renommage officiel des dossiers : https://www.minecraft.net/pt-pt/article/minecraft-java-edition-1-21
- Minecraft Java Edition 26.1, formats et changements techniques : https://www.minecraft.net/nl-nl/article/minecraft-java-edition-26-1
- Snapshot 25w31a, métadonnées de pack modernes : https://feedback.minecraft.net/hc/en-us/articles/38407004270605-Minecraft-Java-Edition-Snapshot-25w31a
- Misode Versions, comparaison de formats : https://misode.github.io/versions/

## Incertitudes / à vérifier manuellement

- Schémas exacts 26.1 des commandes, composants, predicates et enchantments employés.
- Usage voulu de genvague, test1.21 et skin/functions, sans chemin automatique observé.
- Nécessité des modèles assets/minecraft/models/itemold.
- Dépendance effective aux fichiers OptiFine/CEM.

Niveau de confiance : élevée pour la structure locale et les références de fonctions ; moyenne pour la compatibilité runtime 26.1 ; faible pour l'intention des modules non reliés automatiquement.
