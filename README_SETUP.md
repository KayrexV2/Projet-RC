# Travail local — Retrowave Challenger / Retro Action Verge

Ce dépôt rassemble les packs Minecraft Java existants et réserve un dossier au futur mod. Voir le [README principal](README.md) pour leur état réel. Les instructions de travail sont dans [AGENTS.md](AGENTS.md).

## Installation minimale

1. Ouvre un terminal à la racine du dépôt et lis `AGENTS.md`.
2. Vérifie la branche active et l'état des fichiers :

```powershell
git branch --show-current
git status --short
```

La branche attendue est `main`. Si elle diffère, signale-le sans changer de branche automatiquement.

3. Lance l'agent local depuis la racine avec la tâche et le périmètre souhaités.
4. Utilise les prompts de `prompts/` si la tâche le justifie. Un pré-audit exhaustif n'est pas un préalable aux corrections ciblées.
5. Examine les changements et leurs contrôles avant d'autoriser explicitement un commit ou un push.

La cible projet est 26.1 ; `AGENTS.md` utilise 26.1.2 par défaut pour les tâches sans version précise. Les travaux documentés pour 26.1.2 ne valent pas validation complète en jeu.

## QA simple

```powershell
python scripts/check_datapack.py "datapack/retrowave-challenger"
python scripts/check_datapack.py "ressourcepack/retrowavechallenger v4 1.21.4"
git diff --check
```

## Workflow recommandé

Python doit être disponible dans l'environnement local. Le script contrôle les JSON stricts et signale des motifs à vérifier ; il ne valide pas la compatibilité Minecraft complète. Fournir le dossier du datapack permet aussi de vérifier les anciens noms de dossiers sous son `data/`.

1. Inspecter les fichiers concernés et identifier le besoin.
2. Appliquer les changements autorisés et limités au périmètre.
3. Examiner le diff, effectuer les contrôles adaptés et tester en jeu si nécessaire.
4. Présenter les fichiers affectés, les résultats et les incertitudes.
5. Attendre la validation ; ne commit/push/merge que sur demande explicite.

Voir le [workflow Notion → GitHub](docs/workflow.md). Le script historique `scripts/create_migration_branch.ps1` est conservé mais ne doit pas être lancé dans le workflow courant sur `main`. Le script de sauvegarde a une destination par défaut hors workspace ; adapter son usage au cadre de `AGENTS.md`.
