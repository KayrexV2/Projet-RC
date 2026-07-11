# Vue d'architecture — Retrowave Challenger

## Portée

Projet Minecraft Java Edition composé d'un datapack dans datapack/retrowave-challenger et d'un resource pack dans ressourcepack/retrowavechallenger v4 1.21.4.

Cette vue est descriptive, produite en lecture seule. Elle ne modifie aucun fichier des packs.

## Carte des namespaces

| Couche | Namespace | Responsabilité |
| --- | --- | --- |
| Datapack | minecraft | hooks load/tick et tag de damage type |
| Datapack | weapons | armes, tirs, impacts, cooldowns, enchantments |
| Datapack | pouvoir | Superninja, Dark Vador, Berserker, Soutiens |
| Datapack | utilitaire | boucles, détection, admin, projectiles, skins, cristaux |
| Datapack | ui | score mana et barre d'action |
| Datapack | genvague | essais de génération de vagues |
| Datapack | skin | ancien changement de skin, chemin non enregistré |
| Datapack | test1.21 | particules de test |
| Resource pack | minecraft | définitions d'items, police, textures et OptiFine |
| Resource pack | weapons | modèles et textures d'armes |
| Resource pack | pouvoir | modèles et sons de pouvoirs |
| Resource pack | utilitaire | modèles et textures d'outils/énergie |
| Resource pack | space | police et texte de l'UI |
| Resource pack | ambiant_sounds | sons d'ambiance |

## Architecture d'exécution

Flux attendu :

1. minecraft:load lance les initialiseurs weapons:init, ui:init, utilitaire:init et les initialiseurs de pouvoirs.
2. utilitaire:init prépare les objectifs globaux puis appelle utilitaire:load.
3. utilitaire:load démarre killdetect et les boucles à 2 et 3 ticks.
4. ui:init crée mana et lance ui:main, qui affiche ui:bar puis se reprogramme chaque tick.
5. La boucle à 1 tick gère le slot, les skins, les attributs de visée et Hyper Sword.
6. Les advancements déclenchent les armes/pouvoirs ; les predicates et enchantments complètent ces déclencheurs.

État réel : les chemins de tags sont historiques et trois références de points d'entrée sont absentes. Le flux ci-dessus est donc l'intention du projet, pas un graphe d'exécution garanti.

## Modules fonctionnels

### Weapons

Le namespace weapons comprend 56 fonctions. Les systèmes relevés sont :

- V-21 : raycasts de visée, score rc ;
- Arcflame : tir, combustion, impacts et cooldown af ;
- Arcelite : tir à l'arc, protection et vitesse ;
- Sniper, Protokol-41 et Mousket : tir, zoom, refroidissement et skins ;
- Hyper Sword : hitbox interaction, projectile, retour et boucle hs ;
- Briseur, Autopercuteur, lance énergétique, marteau gravité et ESR-17.

Les advancements weapons sont des déclencheurs structurants. Les enchantments traceur_br et traceur_br_2 appellent weapons:briseur/damage.

### Pouvoirs

Le namespace pouvoir contient 28 fonctions :

- Superninja : dash, téléportation, onde de choc, raycast et cooldown ;
- Dark Vador : dégâts, mouvement et cooldown ;
- Berserker : états bk, bkeg et ultime ;
- Soutiens : bouclier, rotation, particules, onde de choc et boucle.

Le fichier pouvoir:function/init.mcfunction prépare sneak, superninjaCooldown, DVuse, dvcd, DVkill, SNkill, bk, bkeg, st et st_stat, mais n'est pas relié à load dans l'état audité.

### Utilitaires

Le namespace utilitaire, avec 36 fonctions, assure les dépendances transverses :

- objectifs globaux et valeurs joueurs ;
- boucles 1, 2 et 3 ticks ;
- changement de skin selon slot, sneak et arme tenue ;
- détection de kills, sons et statistiques ;
- mouvement de projectiles, randomisation 3D, cristaux ;
- administration, debug et inspection d'armes.

Ces boucles sont la dépendance critique des états d'armes. Leur modèle schedule récursif doit démarrer une seule fois.

### UI

ui:init crée mana. ui:main exécute ui:bar pour les joueurs non spectateurs puis se reprogramme à un tick. ui:bar transforme les plages de mana en title actionbar avec les caractères privés de la police space.

La dépendance visuelle est ui:bar vers les polices assets/minecraft/font et assets/space/font, puis les textures correspondantes.

### Resource pack et skins

Les items de base utilisés comme routeurs de modèles sont :

| Item de base | Système |
| --- | --- |
| warped_fungus_on_a_stick | Mousket, Protokol-41, Sniper, Hyper Sword, outils et Soutiens |
| bow | Arcelite |
| crossbow | Autopercuteur |
| ender_eye | V-21 et hypercube |
| rabbit_foot | arme d'onde et bouclier |
| diamond_axe | marteau gravité |

Le datapack sélectionne les états par custom_data, custom_model_data, scoreboards et tags. Les définitions assets/minecraft/items sélectionnent ensuite les modèles weapons, pouvoir et utilitaire.

Les fichiers OptiFine, CEM et random/entity constituent une couche client distincte de Vanilla. Leur présence doit être documentée comme dépendance optionnelle de rendu.

## Contrats inter-modules

| Producteur | Consommateur | Contrat |
| --- | --- | --- |
| weapons:init | gameplay et UI | objectifs, tags et états initiaux d'armes |
| utilitaire:boucle/boucle_1_tick | weapons | slot, skins, Hyper Sword |
| utilitaire predicates | weapons/pouvoir | sneak, traceur, inspection |
| advancements | fonctions gameplay | déclenchement d'armes/pouvoirs |
| ui | resource pack | rendu de la barre de mana |
| datapack custom_model_data | assets/minecraft/items | modèle visible de l'item |
| enchantments weapons | weapons:briseur/damage | hook de dégâts |

## Scoreboards centraux

| Domaine | Objectifs principaux |
| --- | --- |
| UI | mana |
| État joueur | clickdroit, sneak, sneaktime, SelectedItemSlot, SelectedItemSlot2 |
| Armes | Armedelance, arbalete, arcdetect, ae, af, mg, v21, mk, rc, hs |
| Pouvoirs | pkcd, superninjaCooldown, dvcd, DVuse, bk, bkeg, st |
| Statistiques | Monstre_aneantie, kd, mainkill, aekill, afkill, mgkill, mkkill, sniperkill, v21kill, DVkill, SNkill |
| Mouvement/aléatoire | motion_x1, motion_y1, motion_z1, motion_x2, motion_y2, motion_z2, ramdom |

## Modules potentiellement dormants ou fragiles

- skin/functions : fichier présent dans un dossier pluriel non enregistré depuis 1.21.
- genvague et test1.21 : aucun chemin automatique entrant observé.
- assets/minecraft/models/itemold et les sous-dossiers old : archives probables, sans suppression proposée.
- utilitaire:skin_weapons/arme_au_sol et pouvoir:superninja/usedetect_droit_line_5 : références sans fichier.
- weapons:hypersword/boucle : divergence de nom avec hs_boucle.
- cniv1-v2 et cniv1-v11 : modèles référencés mais absents.

## Risques de maintenabilité

1. Les points d'entrée sont distribués entre tags, init et schedules sans répartiteur fonctionnel unique.
2. Les états sont représentés en scoreboards, tags, custom_data, custom_model_data et NBT.
3. Des noms et chemins historiques diminuent la fiabilité de la recherche et de la QA.
4. Assets actifs et archives cohabitent sans manifeste.
5. La compatibilité OptiFine/CEM n'est pas séparée du contrat Vanilla.

## Zones à vérifier manuellement

- Toute syntaxe 26.1 liée aux composants d'items, predicates et enchantments.
- Effet d'un reload sur les objectifs et chaînes schedule.
- Erreurs du chargeur datapack après remise à niveau des dossiers.
- Rendu de tous les états d'armes, dont custom_model_data 2 et 11.
- Rendu avec et sans la couche OptiFine/CEM prévue.

## Sources

- Sources du projet : docs/sources_minecraft_projet.md.
- Renommages de dossiers depuis Java 1.21 : https://www.minecraft.net/pt-pt/article/minecraft-java-edition-1-21
- Minecraft Java Edition 26.1 : https://www.minecraft.net/nl-nl/article/minecraft-java-edition-26-1
- Métadonnées modernes de pack : https://feedback.minecraft.net/hc/en-us/articles/38407004270605-Minecraft-Java-Edition-Snapshot-25w31a
- Références versionnées : https://misode.github.io/versions/
