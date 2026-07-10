# Starter kit — Agent Codex Minecraft Datapack

Ce dossier contient une base simple pour utiliser Codex comme agent local d’aide à la conception et migration de datapacks/resource packs Minecraft Java.

## Installation minimale

1. Place `AGENTS.md` à la racine de ton dépôt Minecraft.
2. Crée une branche de travail :

```powershell
git switch -c mig/26_1_datapack
```

3. Lance Codex depuis VS Code, l’app Codex ou le CLI.
4. Commence par le prompt `prompts/00_preaudit.md`.
5. N’autorise les modifications qu’après lecture du rapport.

## Commande CLI utile

```powershell
codex --sandbox workspace-write --ask-for-approval on-request
```

## QA simple

```powershell
python scripts/check_datapack.py .
```

## Workflow recommandé

1. Pré-audit lecture seule.
2. Plan de migration.
3. Patch par lot.
4. Diff.
5. QA script.
6. Test in-game.
7. Rapport final.
