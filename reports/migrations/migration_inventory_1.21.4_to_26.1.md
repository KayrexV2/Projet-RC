# Rapport Codex — Minecraft Java 26.1

## Décision rapide

- Version source : Minecraft Java Edition 1.21.4.
- Version cible : Minecraft Java Edition 26.1, validation finale sur 26.1.2.
- Édition : Java Edition uniquement.
- Risque global : critique : métadonnées de packs, chemins de registres, hooks et textes doivent être migrés avant toute QA gameplay.
- Recommandation : migration définitive vers 26.1, sans branche, overlay ou copie de compatibilité 1.21.4.

Ce document est un audit sans application de correction. Aucun fichier Minecraft et aucun commit ne sont modifiés.

## Périmètre actif et exclusions

Le flux actif est celui atteint depuis minecraft:load, minecraft:tick, weapons:init, utilitaire:init, ui:init, leurs schedules et les advancements associés. Une référence absente n'est critique que lorsqu'elle est atteignable dans ce graphe.

Les modules genvague, skin, test1.21, les sous-dossiers old et les modèles itemold sont exclus de toute restauration. La couche historique de formats d’entités sous `assets/minecraft/optifine` est hors du lot structurel actuel, mais son audit et sa migration ETF/EMF/ESF constituent un lot distinct obligatoire.

## Référence cible 26.1 / 26.1.2

- 26.1 emploie le format datapack 101.1 et resource pack 84.0. La publication 26.1.2 est un hotfix sans changement de format annoncé. Sources : [26.1 Mojang](https://www.minecraft.net/nl-nl/article/minecraft-java-edition-26-1), [26.1.2 Mojang](https://www.minecraft.net/en-us/article/minecraft-java-edition-26-1-2), [Misode 26.1](https://misode.github.io/versions/?id=26.1&tab=changelog).
- Les packs modernes exigent min_format et max_format dans pack ; pack_format et supported_formats ne sont plus admis. Les versions mineures s'écrivent sous la forme [major, minor]. Source : [Mojang 1.21.9](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21-9).
- Les composants texte sont écrits en SNBT depuis 1.21.5 ; les JSON enfermés dans des chaînes ne sont plus valides dans title, tellraw, CustomName et custom_name. Source : [Misode 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog).
- Les stacks utilisent components et custom_data ; le champ tag historique est supprimé. Source : [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a).
- Le champ Particle des area_effect_cloud est devenu custom_particle depuis 1.21.6. Source : [Misode 1.21.6](https://misode.github.io/versions/?id=1.21.6&tab=changelog).

## Inventaire des problèmes

### Métadonnées et registres

| Fichier / zone | Système | Structure observée | Structure 26.1 attendue | Source | Criticité | Confiance | Test après correction |
| --- | --- | --- | --- | --- | --- | --- | --- |
| datapack/retrowave-challenger/pack.mcmeta, pack | Métadonnées datapack | pack_format 48 et supported_formats 61 | min_format [101,1], max_format [101,1] ; retirer les deux champs historiques | [Mojang 1.21.9](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21-9) | bloque le chargement | élevée | Installer le datapack seul dans 26.1.2, sans message de format invalide |
| datapack/retrowave-challenger/pack.mcmeta, overlays | Overlay | directory retrowavechallenger v4 1.21.4 et formats 71 ; dossier absent | Supprimer cet overlay obsolète. S'il devient utile, le reconstruire avec min_format/max_format et un dossier existant | [Mojang 1.21.9](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21-9) | bloque le chargement | élevée | /reload sans erreur d'overlay |
| ressourcepack/retrowavechallenger v4 1.21.4/pack.mcmeta | Métadonnées resource pack | pack_format 61 | min_format [84,0], max_format [84,0] ; retirer pack_format | [26.1 Mojang](https://www.minecraft.net/nl-nl/article/minecraft-java-edition-26-1) | bloque le chargement | élevée | Activer le pack dans 26.1.2 |
| data/minecraft/tags/functions/load.json | Tag minecraft:load | Dossier tags/functions | Déplacer vers tags/function/load.json | [Mojang 1.21](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21) | bloque le chargement | élevée | /reload crée les objectifs de weapons, utilitaire et ui |
| data/minecraft/tags/functions/tick.json | Tag minecraft:tick | Dossier tags/functions | Déplacer vers tags/function/tick.json | [Mojang 1.21](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21) | casse une fonctionnalité active | élevée | ui:main tourne sans appel manuel |
| data/utilitaire/item_modifier/CMD_obj.json | Item modifier expérimental | Dossier singulier migré au lot 1 ; aucune référence locale active trouvée et contenu historique conservé sans conversion déduite | Valider le chargement du registre en 26.1.2 avant toute migration fonctionnelle | [Mojang 1.21](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21) et recherche locale/Git | migration nécessaire | élevée sur le déplacement, faible sur l’intention fonctionnelle | Signaler précisément toute erreur de registre sans inventer de conversion |
| data/skin/functions/swap_skin/sp1.mcfunction | Module skin historique | Dossier functions | function seulement en cas de réactivation | [Mojang 1.21](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21) | hors périmètre | élevée | Aucun test requis |

### Entrées et appels réellement atteignables

| Fichier / zone | Système | Structure observée | Structure 26.1 attendue | Source | Criticité | Confiance | Test après correction |
| --- | --- | --- | --- | --- | --- | --- | --- |
| data/minecraft/tags/function/load.json | Pouvoirs au chargement | Références absentes à pouvoir:superninja/init et pouvoir:darkvador/initdv retirées au lot 1 | Superninja et Dark Vador restent en construction et désactivés automatiquement ; conserver leurs fichiers existants sans créer de stub | Décision utilisateur et référence locale | migration nécessaire | élevée | `/reload` sans fonction inconnue |
| data/minecraft/tags/function/tick.json | Pouvoirs au tick | pouvoir:tick retirée au lot 1 après recherche sans implémentation ni intention vérifiable | Ne pas inventer cette fonction ; historique Git, rapports et appels locaux consultés | Recherche locale et Git | migration nécessaire | élevée | Une minute de jeu sans erreur ni spam de log |
| data/pouvoir/function/superninja/usedetect_droit.mcfunction, ligne 5 | Superninja | Appel pouvoir:superninja/usedetect_droit_line_5 absent | Conserver et compléter seulement si Superninja est retenu ; sinon retirer son chemin entrant | Référence locale | casse une fonctionnalité active | élevée | Activation avec et sans sneak |
| data/utilitaire/function/swap_skin/changement_arme_main.mcfunction | Skin d'arme actif | Référence utilitaire:skin_weapons/arme_au_sol ; fichier réel sous utilitaire:swap_skin | Pointer vers l'ID réel, sans réintroduire le namespace historique | Référence locale | casse une fonctionnalité active | élevée | Poser/reprendre une arme et vérifier le modèle |
| data/utilitaire/function/boucle/boucle_1_tick.mcfunction | Hyper Sword | Appel weapons:hypersword/boucle ; fichier réel hs_boucle | Pointer vers weapons:hypersword/hs_boucle si l'arme est conservée | Référence locale | casse une fonctionnalité active | élevée | Lancer puis récupérer l'Hyper Sword |
| data/genvague, data/skin, data/test1.21 | Prototypes | Fonctions et références incomplètes possibles, sans route active retenue | Ne pas restaurer ni migrer | Périmètre utilisateur | hors périmètre | élevée | Aucun test requis hors chargement global |

### Commandes, texte et NBT d'entités

| Fichier / ligne ou zone | Système | Structure observée | Structure 26.1 attendue | Source | Criticité | Confiance | Test après correction |
| --- | --- | --- | --- | --- | --- | --- | --- |
| data/ui/function/bar.mcfunction, lignes 1 à 21 | UI actionbar | Tableaux JSON text dans title actionbar | Composants texte SNBT, sans JSON sérialisé | [Misode 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog) | casse une fonctionnalité active | élevée | Faire varier mana de 0 à 115 |
| weapons/lanceenergetique/lanceenergetique.mcfunction, ligne 5 | Lance énergétique | CustomName JSON-stringifié dans summon | CustomName au format SNBT direct | [Misode 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog) | casse une fonctionnalité active | élevée | Lancer la lance et vérifier la balise |
| weapons/lanceenergetique/le_damage.mcfunction, lignes 3 et 10 à 12 | Lance énergétique | CustomName et minecraft:custom_name JSON-stringifiés | Texte SNBT direct dans NBT et composants | [Misode 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog) | casse une fonctionnalité active | élevée | Équiper/déséquiper la lance; contrôler les scores |
| weapons/diff_armedelance.mcfunction, lignes 3 à 4 | Lance énergétique | Même comparaison custom_name historique | Même conversion SNBT | [Misode 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog) | casse une fonctionnalité active | élevée | Contrôler Armedelance et lanceenergetique |
| pouvoir/soutiens/boucle.mcfunction, ligne 8 | Soutiens | CustomName JSON-stringifié | Texte SNBT direct | [Misode 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog) | casse une fonctionnalité active | élevée | Déployer puis fermer le soutien |
| pouvoir/soutiens/onde_de_choque.mcfunction, lignes 8 et 15 | Soutiens | CustomName JSON-stringifié dans displays | Texte SNBT direct | [Misode 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog) | casse une fonctionnalité active | élevée | Déclencher onde et bouclier |
| pouvoir/soutiens/main.mcfunction, ligne 10 | Soutiens | minecraft:custom_name est une chaîne JSON | Composant SNBT, par exemple text direct | [Misode 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog) | casse une fonctionnalité active | élevée | Vérifier l'item display embarqué |
| Fonctions actives de Soutiens et Hyper Sword, stacks item | Stacks NBT | count est parfois 1b | Normaliser count en entier 1 pour les stacks sérialisés modernes | [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a) | avertissement | moyenne | Vérifier parsing des item displays et retours de projectile |
| Tous area_effect_cloud actifs | Particules | Aucun champ Particle trouvé ; clouds présents pour la lance | Si Particle apparaît pendant implémentation, employer custom_particle ; aucune conversion préventive inutile | [Misode 1.21.6](https://misode.github.io/versions/?id=1.21.6&tab=changelog) | avertissement | élevée | Tester les clouds de la lance |

### Composants, custom_data et custom_model_data

| Fichier / zone | Système | Structure observée | Structure 26.1 attendue | Source | Criticité | Confiance | Test après correction |
| --- | --- | --- | --- | --- | --- | --- | --- |
| utilitaire/admin/give_arme_info.mcfunction, lignes 1 à 14 | Distribution d'armes | custom_data, custom_model_data strings, charged_projectiles, enchantments | Conserver le modèle components, le revalider en grammaire 26.1 ; ne pas revenir au champ tag | [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a) | avertissement | moyenne | Exécuter chaque give dans 26.1.2 avec F3+H |
| utilitaire/swap_skin et weapons/swap_skin, Sniper PK-41 Mousket | États visuels actifs | NBT SelectedItem/Inventory avec components custom_data et custom_model_data ; item replace | Conserver la stratégie mais valider tous les sélecteurs et listes strings dans 26.1.2 | [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a) | casse une fonctionnalité active | moyenne | Tester états normal, scope, vide, surchauffe et offhand |
| weapons/hypersword/hs_retour.mcfunction, lignes 1 à 2 | Hyper Sword | Stack de trident avec custom_data et custom_model_data | Conserver les composants et normaliser le format de stack | [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a) | casse une fonctionnalité active | moyenne | Vérifier le retour et le rendu |
| pouvoir/soutiens, item displays | Soutiens | strings 10001 à 10004 | Maintenir le contrat de données avec le routeur resource pack | [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a) | casse une fonctionnalité active | moyenne | Parcourir les quatre états visuels |
| utilitaire/item_modifiers/CMD_obj.json, lignes 1 à 14 | Item modifier | copy_custom_data et chemins CustomModelData historiques | Après renommage de dossier, convertir vers le chemin réel custom_data ou employer set_components si l'intention est custom_model_data. Ne pas inférer la conversion | [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a) | avertissement | élevée | Comparer l'item avant/après depuis le storage source |

### Advancements, predicates, enchantments et damage types

| Fichier / zone | Système | Structure observée | Structure 26.1 attendue | Source | Criticité | Confiance | Test après correction |
| --- | --- | --- | --- | --- | --- | --- | --- |
| weapons/advancement, tous les JSON | Déclencheurs armes | using_item et player_hurt_entity, critères item/entity | Revalider via schémas Misode 26.1 ; conserver les triggers seulement s'ils sont encore exposés | [Misode Generators](https://misode.github.io/) | casse une fonctionnalité active | moyenne | Un scénario par arme et advancement |
| pouvoir/advancement, darkvador berserker st | Déclencheurs pouvoirs | Avancements présents, mais init de pouvoirs incomplet | Valider seulement les pouvoirs retenus après décision de périmètre | [Misode Generators](https://misode.github.io/) | avertissement | moyenne | Tester les pouvoirs conservés |
| utilitaire/advancement, observation et cristal | Utilitaires | Triggers d'observation et d'usage | Vérifier les prédicats d'items : custom_data est partiel, components est exact | [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a) | casse une fonctionnalité active | moyenne | Utiliser les items ciblés et vérifier la récompense |
| utilitaire/predicate et weapons/predicate | Predicates | entity_properties, sneak, nbt, vehicle | Valider par générateur 26.1. Le NBT d'entité n'est pas à convertir automatiquement en custom_data | [Misode Generators](https://misode.github.io/) | avertissement | moyenne | Tests sneak et Arcflame |
| weapons/enchantment/arme/traceur_br.json | Enchantement Briseur | post_attack, run_function, entity predicates | Revalider le schéma complet 26.1 dans Misode | [Misode Generators](https://misode.github.io/) | casse une fonctionnalité active | moyenne | Tir enchanté et appel briseur/damage |
| weapons/enchantment/arme/traceur_br_2.json et utilitaire/enchantment/arme_discrimination.json | Enchantements secondaires | Définitions data-driven | Revalider le schéma et la nécessité; ne pas ajouter d'effet par déduction | [Misode Generators](https://misode.github.io/) | avertissement | moyenne | Chargement du registre puis test ciblé |
| utilitaire/damage_type/bypass.json et minecraft/tags/damage_type/bypasses_cooldown.json | Dégâts | Damage type et tag définis localement | Revalider strictement contre schéma 26.1 et membres de tag | [Misode Generators](https://misode.github.io/) | avertissement | moyenne | Test de dégâts et d'invulnérabilité |

### Resource pack et références croisées

| Fichier / zone | Système | Structure observée | Structure 26.1 attendue | Source | Criticité | Confiance | Test après correction |
| --- | --- | --- | --- | --- | --- | --- | --- |
| assets/minecraft/items/bow, crossbow, diamond_axe, ender_eye, rabbit_foot, warped_fungus_on_a_stick | Routeurs d'items | select, condition, range_dispatch, custom_model_data, using_item | Conserver le modèle data-driven et valider toutes les propriétés sous resource pack 84 | [Misode Generators](https://misode.github.io/), [26.1 pre-release](https://feedback.minecraft.net/hc/en-us/articles/44167381353869-Minecraft-Java-Edition-26-1-Pre-release-1) | casse une fonctionnalité active | moyenne | Tenir chaque item avec/sans donnée et vérifier fallback |
| assets/minecraft/items/warped_fungus_on_a_stick.json, cases 2 et 11 | Routeur utilitaire | Références cniv1-v2 et cniv1-v11 absentes | Aucun rétablissement sans décision humaine. Retirer les cases seulement si les objets sont abandonnés | Référence locale | avertissement | élevée | Ne tester que si les états sont conservés |
| Routeur warped_fungus_on_a_stick, cases 1001 à 1010, 2001 à 2007, 3001 à 3008, 4001, 10001 à 10003 | Contrat datapack/resource pack | IDs custom_model_data envoyés par skins, Hyper Sword et Soutiens | Maintenir une matrice exacte ID vers modèle et vérifier chaque chemin | [Mojang 24w09a](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a) | casse une fonctionnalité active | élevée | Parcourir tous les états d'armes et pouvoirs |
| assets/minecraft/font/default.json, assets/space/font/default.json | UI | Glyphes privés consommés par ui:bar | Conserver les providers après validation resource pack 84 | [Misode Generators](https://misode.github.io/) | casse une fonctionnalité active | moyenne | Tous les niveaux de mana sans caractère manquant |
| assets/minecraft/models/itemold et assets/**/old | Archives | Anciens modèles et textures | Ne pas migrer ni restaurer, sauf référence active découverte | Périmètre utilisateur | hors périmètre | élevée | Aucun test requis |
| assets/minecraft/optifine | Couche de compatibilité de formats ETF/EMF/ESF | CEM et animations EMF, textures aléatoires et émissives ETF, règles et utilitaires sonores ESF | Audit et migration obligatoires dans le lot ETF/EMF/ESF distinct ; conserver les chemins historiques documentés par Traben-0 | Documentations officielles des dépôts Traben-0 à vérifier pour les versions 26.1.x | migration nécessaire | moyenne | Test client Minecraft Java 26.1.2 avec les versions compatibles 26.1.x de ETF, EMF et ESF |

## Éléments sans rupture confirmée

- Les scoreboards et schedules sont centraux mais aucun changement 26.1 spécifique n'a été confirmé. Ils devront être testés après correction des entrées, notamment contre la duplication de schedules après reload.
- Le projet emploie déjà custom_data et custom_model_data. Il faut les conserver et les valider, pas les reconvertir en ancienne syntaxe NBT.
- using_item est présent dans les advancements et routeurs ; aucune suppression n'a été prouvée dans les sources 26.1 consultées.
- Les predicates entity_properties et flags sneak sont structurellement modernes, mais restent à valider par schéma avant écriture.

## Lots de migration ordonnés

| Lot | Objectif | Fichiers principaux | Dépendances |
| --- | --- | --- | --- |
| 0 | Décider les pouvoirs et modèles conservés | load, tick, pouvoir, routeur warped_fungus_on_a_stick | aucune |
| 1 | Rendre les packs chargeables | deux pack.mcmeta, tags/functions, item_modifiers, overlay | lot 0 pour les entrées pouvoirs |
| 2 | Assainir entrées et init | load, tick, init weapons/utilitaire/ui, références Superninja, skins actifs, Hyper Sword | lot 1 |
| 3 | Convertir textes et commandes | ui/bar, lance, Soutiens, Hyper Sword | lot 2 |
| 4 | Stabiliser components et états visuels | give_arme_info, swap_skin, CMD_obj, fonctions d'armes et Soutiens | lots 1 à 3 |
| 5 | Revalider données événementielles | advancement, predicate, enchantment, damage_type et tags | lots 2 à 4 |
| 6 | Migrer resource pack actif | routeurs items, modèles actifs, fonts, sons | lot 4 |
| 7 | ETF / EMF / ESF — formats d’entités compatibles 26.1.2 | `assets/minecraft/optifine/cem`, `assets/minecraft/optifine/random/entity`, `emissive.properties`, fichiers `.jem`, fichiers `.properties` de textures aléatoires, textures émissives, règles et fichiers sonores ESF, animations et variables EMF | lot 6 ; audit obligatoire dans les documentations officielles des dépôts Traben-0 |
| 8 | QA 26.1.2 | packs complets, journal, scénarios armes/pouvoirs/UI, puis validation client avec les versions compatibles 26.1.x de ETF, EMF et ESF | lots 1 à 7 |

Ordre : Lot 0 → Lot 1 → Lot 2 → Lots 3 et 4 → Lot 5 → Lot 6 → Lot 7 → Lot 8. Le lot 6 peut être préparé en parallèle du lot 5, mais il dépend du contrat custom_model_data stabilisé au lot 4. Le lot 7 est distinct, obligatoire et ne fait pas partie du lot structurel actuel : aucun de ses assets ne doit être modifié avant son audit dédié.

Le chemin historique `assets/minecraft/optifine` ne constitue pas une dépendance au mod OptiFine. Il s’agit d’une couche de compatibilité de formats consommée par ETF (textures aléatoires, personnalisées et émissives), EMF (modèles d’entités CEM, animations et variables) et, selon les fichiers concernés, ESF (variations et utilitaires sonores liés aux entités). Les chemins historiques attendus doivent être conservés. Chaque chemin, format et limitation doit être vérifié dans la documentation officielle des dépôts Traben-0 : la compatibilité avec le format OptiFine d’origine ne doit jamais être supposée complète.

Le lot 7 doit notamment documenter les différences connues entre les formats OptiFine originaux et leur prise en charge par ETF, EMF et ESF. Sa validation finale doit être réalisée avec Minecraft Java Edition 26.1.2 et les versions explicitement compatibles 26.1.x de ces trois mods. Si une compatibilité ou une limitation n’est pas confirmée par une documentation officielle versionnée : `À vérifier manuellement`.

## Éléments explicitement exclus

- data/genvague.
- data/skin.
- data/test1.21.
- archives itemold et old.
- Toute référence absente limitée à ces zones, sauf blocage avéré du chargement global.

## Incertitudes nécessitant une décision humaine

1. Superninja et Dark Vador sont-ils conservés ? Leurs initialiseurs exacts sont absents bien qu'ils soient déclarés au load.
2. `pouvoir:tick` a été retirée du tag actif : aucune implémentation ni intention vérifiable n’a été trouvée dans l’historique Git, les rapports ou les appels locaux.
3. Les états cniv1-v2 et cniv1-v11 sont définitivement abandonnés et ont été retirés du routeur actif sans modification des autres états cniv1.
4. Les enchantements traceur_br_2 et arme_discrimination sont-ils de production ou des tests ?
5. CMD_obj reçoit-il un appel d'un pack externe ? Aucun appel local ni historique n'a été observé ; son contenu expérimental reste inchangé et son intention demeure inconnue.
6. Quelles versions exactes de ETF, EMF et ESF déclarent une compatibilité avec Minecraft Java 26.1.x ? À confirmer dans les dépôts officiels Traben-0 avant le lot 7.
7. Quelles limitations documentées distinguent leur prise en charge des formats OptiFine originaux ? À inventorier séparément pour ETF, EMF et ESF pendant le lot 7.
8. Le support est-il limité exactement à 26.1.2 ? Recommandation : min_format et max_format [101,1].

## Tests automatiques effectués

- Lecture de docs/sources_minecraft_projet.md et application de la hiérarchie de sources.
- Lecture des pack.mcmeta, tags load/tick, pré-audit et architecture.
- Inventaire des namespaces, fonctions, JSON de données et routeurs resource pack.
- Recherche des appels function/schedule, custom_data, custom_model_data, CustomName, title, actionbar, using_item, NBT et références d'assets.
- Consultation des notes Mojang 26.1 et 26.1.2, de la spécification de métadonnées et des changelogs Misode 1.21.5, 1.21.6 et 26.1.
- Lots 0 et 1 appliqués : métadonnées limitées à 26.1.2, overlay 1.21.4 retiré, dossiers `function` et `item_modifier` migrés, références automatiques invalides retirées et cas cniv1-v2/cniv1-v11 supprimés du routeur actif.
- Parsing JSON réussi avec `ConvertFrom-Json` pour les deux `pack.mcmeta`, les tags `load`/`tick`, `CMD_obj.json` et le routeur `warped_fungus_on_a_stick.json`.
- Vérification réussie de l’absence des trois anciens chemins actifs et des références automatiques retirées.
- Résolution locale réussie des quatre fonctions encore appelées par les tags : `weapons:init`, `ui:init`, `utilitaire:init` et `ui:main`.
- Comparaison avec Git : le contenu de `CMD_obj.json` est inchangé après son déplacement.

La validation JSON des fichiers modifiés est exécutée avec succès. La validation JSON exhaustive du projet et la validation runtime ne sont pas exécutées. À vérifier manuellement avec serveur/client Java 26.1.2 et les schémas Misode 26.1 avant chaque lot.

## Sources consultées

- [Sources Minecraft du projet](../../docs/sources_minecraft_projet.md)
- [Minecraft Java Edition 26.1](https://www.minecraft.net/nl-nl/article/minecraft-java-edition-26-1)
- [Minecraft Java Edition 26.1.2](https://www.minecraft.net/en-us/article/minecraft-java-edition-26-1-2)
- [Mojang 1.21.9 — métadonnées de packs](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21-9)
- [Mojang 24w09a — components et predicates](https://feedback.minecraft.net/hc/en-us/articles/24531969592077-Minecraft-Java-Edition-Snapshot-24w09a)
- [Misode Versions 1.21.5](https://misode.github.io/versions/?id=1.21.5&tab=changelog)
- [Misode Versions 1.21.6](https://misode.github.io/versions/?id=1.21.6&tab=changelog)
- [Misode Versions 26.1](https://misode.github.io/versions/?id=26.1&tab=changelog)
- [Misode Data Pack Generators](https://misode.github.io/)

## Incertitudes / à vérifier manuellement

- Schéma 26.1.2 exact des execute, sélecteurs NBT et composants d'items.
- Schémas détaillés des advancements, predicates, enchantments et damage types.
- Rendu de tous les modèles, fonts et états custom_model_data.
- Absence de duplication des schedules après reload.
- Chargement runtime de `data/utilitaire/item_modifier/CMD_obj.json` : son emplacement est migré et son contenu expérimental est inchangé, mais sa validité fonctionnelle en 26.1.2 reste à confirmer sans conversion déduite.
- Superninja et Dark Vador restent en construction : leurs fichiers sont conservés, mais leurs initialiseurs automatiques sont désactivés jusqu’à finalisation.

Niveau de confiance global : élevée pour métadonnées, chemins de registres, texte SNBT et références locales ; moyenne pour les données à revalider par générateur ; faible seulement pour l'intention des modules exclus ou non confirmés.
