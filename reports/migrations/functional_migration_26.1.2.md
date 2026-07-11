# Migration fonctionnelle — Minecraft Java 26.1.2

## Résultat

La migration fonctionnelle a corrigé la résolution de plusieurs modèles actifs, modernisé la commande de l’Autopercuteur, centralisé le chargement et ajouté un kit de test joueur. La validation runtime dans Minecraft reste nécessaire.

## Resource pack

### Modèles corrigés

- Les champs `particle` ambigus d’Arcelite et de l’Autopercuteur utilisent maintenant une clé locale (`#0` ou `#2`).
- Les modèles Soutiens utilisent des clés `particle` locales.
- Les références inexistantes `weapons:item/cellue_energie` des modèles Soutiens actifs pointent maintenant vers la texture existante `utilitaire:item/cellule_energie/cellue_energie`.
- Les item model definitions actives référencent des modèles présents.
- Tous les JSON actifs inspectés sont valides.

Les dossiers `old`, `itemold` et les états abandonnés cniv1-v2/cniv1-v11 restent hors périmètre.

## Commandes

Dans `utilitaire:admin/give_arme_info`, l’ancienne structure :

```snbt
minecraft:enchantments={levels:{...},show_in_tooltip:false}
```

est remplacée par :

```snbt
minecraft:enchantments={...},
minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}
```

Les niveaux d’enchantement, le projectile chargé, `custom_data` et `custom_model_data` sont conservés.

## Chargement central

`minecraft:load` appelle uniquement `retrowave:load`. `minecraft:tick` ne lance plus `ui:main`, puisque cette fonction utilise sa propre chaîne schedule.

`retrowave:load` :

1. appelle les initialiseurs d’objectifs ;
2. nettoie les schedules centraux existants ;
3. redémarre chaque chaîne une seule fois ;
4. initialise séparément les joueurs sans tag `retrowave_initialized`.

Les initialiseurs `weapons`, `utilitaire`, `ui` et `pouvoir` ne remettent plus les scores de tous les joueurs à zéro. Superninja et Dark Vador restent conservés mais ne sont pas démarrés automatiquement.

La référence absente `utilitaire:skin_weapons/arme_au_sol` a été corrigée vers la fonction existante `utilitaire:swap_skin/arme_au_sol`.

## Kit de test

Commande :

```mcfunction
/function utilitaire:admin/test_kit
```

Le kit utilise `@s`, ne vide pas l’inventaire, ne change pas le mode de jeu et fournit les objets actifs suivants : Sniper, Hyper Sword, Autopercuteur, Arcelite, Arcflame, Mousket, Protokole-41, V-21, MG, Briseur, Soutiens, Lance énergétique et 16 cristaux de recharge de niveau 1 (+30 mana chacun).

Les systèmes en construction ou expérimentaux ne sont pas inclus.

## ETF / EMF / ESF

Le dossier `assets/minecraft/optifine` est une couche historique de compatibilité de formats ; il ne représente pas une dépendance au mod OptiFine.

### ETF

- `optifine/random/entity/skeleton/skeleton.properties` déclare les variantes `2` et `3`.
- `skeleton2.png` et `skeleton3.png` existent.
- `emissive.properties` déclare le suffixe `_g`.
- 37 textures `_g.png` sont présentes dans le resource pack.

### EMF

- `optifine/cem/skeleton.jem` est un JSON valide.
- Le modèle déclare une texture de travail 128 × 128 et sept parties racines.
- Il contient des animations EMF/CEM.
- EMF dépend fonctionnellement d’ETF pour plusieurs fonctions, notamment les variations de textures et modèles.

### ESF

Aucune règle ou ressource explicitement au format ESF n’a été trouvée. Les quatre sons du namespace `ambiant_sounds` sont des sons Vanilla déclarés dans `sounds.json`, pas des règles ESF. Aucun fichier ESF n’a été inventé.

### Limites

La documentation EMF indique une compatibilité proche, mais pas nécessairement parfaite, avec les formats CEM historiques. La prise en charge effective des animations, des noms de parties, des textures 128/1024 et des règles `name.N` doit être confirmée dans le journal client.

À vérifier manuellement avec Minecraft Java 26.1.2 et des versions explicitement compatibles 26.1.x de ETF, EMF et ESF.

## Vérifications automatiques

- JSON des fichiers modifiés : valide.
- Références actives de fonctions locales : aucune cible absente, hors modules explicitement en construction.
- Resets globaux dans les initialiseurs : aucun.
- Ancienne structure `enchantments.levels` : aucune occurrence active restante.
- Références `particle` ambiguës corrigées dans les modèles actifs concernés.
- `git diff --check` : réussi.

## Tests in-game

1. Charger le datapack et le resource pack dans Minecraft Java 26.1.2.
2. Exécuter deux fois `/reload` et contrôler les erreurs et doublons de schedules.
3. Modifier `mana`, refaire `/reload` et confirmer que la valeur est conservée.
4. Exécuter `/function utilitaire:admin/test_kit` en tant que joueur.
5. Vérifier chaque modèle, état de visée, état vide et état de surchauffe.
6. Recharger les ressources avec `F3+T` et contrôler le journal ETF/EMF/ESF.
7. Faire apparaître des squelettes nommés `D1` et `normal` pour tester les variantes ETF.
8. Vérifier le modèle et les animations du squelette dans EMF.
9. Vérifier les textures émissives avec ETF, sans OptiFine.

## Sources

- [Sources Minecraft du projet](../../docs/sources_minecraft_projet.md)
- [Minecraft Java Edition 26.1](https://www.minecraft.net/nl-nl/article/minecraft-java-edition-26-1)
- [Minecraft Java Edition 26.1.2](https://www.minecraft.net/en-us/article/minecraft-java-edition-26-1-2)
- [Entity Texture Features](https://github.com/Traben-0/Entity_Texture_Features)
- [Entity Model Features](https://github.com/Traben-0/Entity_Model_Features)
- [Versions ETF compatibles 26.1.x](https://modrinth.com/mod/entitytexturefeatures/versions)

## État Git

- Branche : `main`.
- Aucun commit effectué.
- Aucun push effectué.
