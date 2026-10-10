# Workflow de développement

## De l'idée à la validation

1. **Idée dans Notion** : décrire l'intention et le besoin dans CODEX RC.
2. **Spécification** : préciser le résultat attendu, le périmètre, les composants concernés et les critères d'acceptation. Valider les décisions structurantes, notamment le loader, avant leur implémentation.
3. **Issue GitHub** : utiliser le modèle fonctionnalité ou bug. Indiquer la version Minecraft exacte, les critères vérifiables, les tests prévus et, si utile, le lien Notion. L'Issue doit rester compréhensible avec les informations publiques autorisées ; ne pas copier de contenu privé.
4. **Développement** : suivre [AGENTS.md](../AGENTS.md), inspecter le périmètre utile et travailler localement sur `main`, sans branche automatique. Relier les changements à l'Issue. Pour une question technique Minecraft, vérifier les [sources du projet](sources_minecraft_projet.md).
5. **Tests** : effectuer les contrôles adaptés et consigner commandes, résultats, version exacte et limites. Un contrôle statique réussi ne remplace pas le test en jeu. Une validation impossible porte la mention « À vérifier manuellement ».
6. **Validation** : présenter le diff et les fichiers affectés au propriétaire. Commit, push et merge nécessitent une demande explicite. Passer à « Terminé » lorsque les critères sont satisfaits et les preuves de validation sont consignées.

Le [modèle de PR](../.github/pull_request_template.md) prépare les futures revues. Il n'impose pas de créer une branche ou une PR pendant le travail local sur `main` ; ce mode de publication doit être demandé explicitement.

## GitHub Projects — structure conseillée

Cette structure est une proposition. Aucun Project n'est créé ou configuré par les fichiers du dépôt ; vérifier l'existant sur GitHub avant de le configurer.

| Statut | Usage |
| --- | --- |
| Backlog | Idée ou bug enregistré, périmètre encore à préciser ou prioriser. |
| À faire | Spécification et critères prêts, tâche retenue. |
| En cours | Développement engagé. |
| À tester | Changement prêt, contrôles ou validation finale encore attendus. |
| Terminé | Critères vérifiés et validation consignée. |

Flux conseillé : **Backlog → À faire → En cours → À tester → Terminé**. Revenir à « En cours » si un test nécessite une correction.

| Champ | Contenu conseillé |
| --- | --- |
| Type | Fonctionnalité, Bug, Maintenance, Documentation. |
| Priorité | Haute, Normale, Basse. |
| Composant | Datapack, Resource pack, Mod, Outils, Documentation ; plusieurs si nécessaire. |
| Responsable | Personne chargée de la tâche, via l'assignation de l'Issue. |
| Jalon | Objectif de livraison, via le milestone de l'Issue si ce mécanisme est retenu. |

Les noms de champs sont les libellés souhaités ; choisir leur représentation dans l'interface Projects lors de la configuration. Éviter de doubler une assignation ou un milestone par un champ texte parallèle. Une Issue transversale peut couvrir plusieurs composants ; la découper seulement si cela facilite réellement la livraison.

## Contrôles existants et limites

Le [guide local](../README_SETUP.md) donne les commandes du contrôleur Python et de Git. Le contrôle des anciens noms de dossiers examine uniquement le `data/` à la racine du chemin passé : fournir directement le dossier du datapack pour ce contrôle. Les avertissements sont des pistes de vérification, pas une validation complète de syntaxe.

Le script historique `scripts/create_migration_branch.ps1` change de branche : il ne fait pas partie du workflow courant sur `main`. `scripts/backup_project.ps1` propose par défaut une destination hors workspace : ne pas l'exécuter avec ce défaut dans le cadre défini par `AGENTS.md`. Ces outils restent conservés.

Ne pas publier de données privées, secrets ou journaux non expurgés dans une Issue, un rapport ou une PR. Les pages Notion liées restent soumises à leurs droits d'accès.
