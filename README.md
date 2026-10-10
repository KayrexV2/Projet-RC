# Retrowave Challenger / Retro Action Verge

Projet de jeu pour **Minecraft Java Edition**, développé dans le monorepo [KayrexV2/Projet-RC](https://github.com/KayrexV2/Projet-RC). Le dépôt rassemble le datapack et le resource pack existants et réserve une place au futur mod Java.

## État du projet

La cible du projet est **26.1**. Des travaux de migration sont documentés pour **26.1.2**, version précise utilisée par défaut dans `AGENTS.md`. La validation complète en jeu reste à effectuer : ces mentions ne constituent pas une garantie de compatibilité. Le nom du dossier du resource pack conserve sa référence historique à 1.21.4.

| Emplacement | Rôle et état |
| --- | --- |
| [datapack/retrowave-challenger/](datapack/retrowave-challenger/) | Logique de jeu existante ; migration documentée, validation en jeu restante. |
| [ressourcepack/retrowavechallenger v4 1.21.4/](ressourcepack/retrowavechallenger%20v4%201.21.4/) | Ressources visuelles et sonores existantes ; chemin conservé. |
| [mod/](mod/README.md) | Emplacement réservé ; aucun loader ni système de build initialisé. |
| [scripts/](scripts/) | Outils locaux de contrôle et utilitaires historiques. |
| [docs/](docs/) | Architecture du dépôt, workflow, décisions et références techniques. |
| [reports/](reports/) | Constats et résultats datés ; ne remplacent pas la vérification de l'état courant. |
| [prompts/](prompts/) et [rules/](rules/) | Supports de travail de l'agent ; à contextualiser selon la tâche et `AGENTS.md`. |
| [state/](state/) | Fichiers d'état des outils existants, pas un suivi de production. |
| [codex_sources_patch/](codex_sources_patch/) | Kit historique de références ; la référence active est dans `docs/`. |

## Conception, développement et suivi

- **Notion — CODEX RC** : conception du jeu, intentions et spécifications. [Wiki](https://app.notion.com/p/247477a1f8ec804c9f4ff24161a69661), [Technique Minecraft](https://app.notion.com/p/3eb477a1f8ec81248fbdd973cba16a05), [Production](https://app.notion.com/p/3eb477a1f8ec81ab8113e54e47c9a14f).
- **GitHub** : sources, historique de développement, [Issues](https://github.com/KayrexV2/Projet-RC/issues) et revues de changements. Une Issue expose uniquement les informations nécessaires et publiables ; elle peut référencer une page Notion sans en copier le contenu privé.
- **GitHub Projects** : suivi opérationnel conseillé, décrit dans le [workflow](docs/workflow.md). Sa création et sa configuration restent à confirmer ; cette préparation locale ne crée aucun Project.
- **Retrowave-Challenger-Legacy** : dépôt d'archives, distinct du développement courant. Son URL exacte reste à confirmer avant d'ajouter un lien.

Les liens Notion peuvent nécessiter un accès autorisé. Aucun contenu privé de ces pages n'est reproduit ici.

## Démarrer et contrôler

Lire [README_SETUP.md](README_SETUP.md) et [AGENTS.md](AGENTS.md) pour le travail local sur `main`. Voir l'[architecture](docs/repository-architecture.md), le [workflow](docs/workflow.md) et la [décision monorepo](docs/decisions/0001-monorepo.md).

Le contrôle existant nécessite Python et s'exécute depuis la racine :

```powershell
python scripts/check_datapack.py "datapack/retrowave-challenger"
python scripts/check_datapack.py "ressourcepack/retrowavechallenger v4 1.21.4"
git diff --check
git status --short
```

Le script contrôle les JSON stricts et les clés dupliquées, signale certains motifs historiques dans les fonctions et vérifie les anciens noms de dossiers sous le `data/` du chemin fourni. Il ne valide ni toute la syntaxe Minecraft ni toutes les références d'assets. Aucun build de mod ni workflow CI n'est actuellement configuré dans le dépôt.

La [migration fonctionnelle documentée](reports/migrations/functional_migration_26.1.2.md) décrit les tests en jeu restant à réaliser. Les anciens [rapports d'architecture](reports/official/) décrivent un état antérieur à ces travaux. Pour toute évolution technique Minecraft, consulter les [sources du projet](docs/sources_minecraft_projet.md), avec priorité aux sources officielles et techniques versionnées selon `AGENTS.md`.
