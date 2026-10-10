# Architecture du dépôt

Le dépôt principal regroupe les composants de Retrowave Challenger / Retro Action Verge. La [décision monorepo](decisions/0001-monorepo.md) conserve leurs chemins afin de faciliter les changements coordonnés sans déplacer les ressources existantes.

## Organisation et responsabilités

```text
Projet-RC/
├── README.md
├── README_SETUP.md
├── AGENTS.md
├── datapack/retrowave-challenger/             # logique de jeu existante
├── ressourcepack/retrowavechallenger v4 1.21.4/ # présentation existante
├── mod/README.md                              # futur mod, loader à décider
├── scripts/                                  # outils locaux
├── docs/
│   ├── sources_minecraft_projet.md
│   ├── repository-architecture.md
│   ├── workflow.md
│   └── decisions/0001-monorepo.md
├── .github/
│   ├── ISSUE_TEMPLATE/feature.yml
│   ├── ISSUE_TEMPLATE/bug.yml
│   └── pull_request_template.md
├── reports/                                  # constats historiques
├── prompts/
├── rules/
├── state/
└── codex_sources_patch/                       # kit historique
```

| Composant | Responsabilité |
| --- | --- |
| Datapack | Porte la logique de jeu actuellement implémentée et ses données. |
| Resource pack | Porte les modèles, textures, sons et éléments de présentation utilisés par le jeu. |
| Futur mod | Accueillera les capacités retenues après choix du loader et définition du périmètre. Aucune fonctionnalité n'y est implémentée. |
| Scripts | Contrôles et utilitaires locaux, sans dépendance implicite dans le jeu. |
| Documentation | Organisation et contrats publics ; Notion conserve la conception détaillée et privée. |

## Interfaces prévues

Le datapack et le resource pack sont coordonnés par les identifiants et références de ressources utilisés par les systèmes existants. Un changement partagé doit préciser dans l'Issue les composants affectés et tester les packs ensemble.

Avant d'introduire une interface avec le mod, documenter dans l'Issue : les identifiants concernés, le composant propriétaire de chaque donnée, le sens des échanges, le moment d'initialisation, le comportement en l'absence du mod et les scénarios de compatibilité. Le mécanisme concret reste à choisir après validation du loader ; aucune API, commande ou structure de données nouvelle n'est définie ici.

Un même état de gameplay doit avoir un propriétaire clairement identifié pour éviter une implémentation concurrente dans le datapack et le mod. Toute réattribution de responsabilité doit être une modification fonctionnelle explicitement validée.

## Versions et références

La cible projet est Minecraft Java Edition 26.1 ; `AGENTS.md` précise 26.1.2 pour les tâches sans version explicite. Les supports historiques dans `rules/` et `prompts/` mentionnent 26.1. Chaque Issue doit indiquer la version exacte testée ou visée. La [migration documentée pour 26.1.2](../reports/migrations/functional_migration_26.1.2.md) reste à valider complètement en jeu.

Les rapports de `reports/official/` sont des photographies antérieures, notamment pour le chargement des systèmes ; ils ne constituent pas un contrat d'exécution courant. Cette documentation ne les reproduit pas et ne réaudite pas le gameplay.

La [liste de sources](sources_minecraft_projet.md) est classée par usage : appliquer la priorité de fiabilité définie dans [AGENTS.md](../AGENTS.md). Les copies de `codex_sources_patch/` sont conservées comme kit historique, sans les recopier sur la documentation active.
