# Patch sources pour Codex

Copie ces deux éléments à la racine de ton projet Codex :

- `docs/sources_minecraft_projet.md`
- `prompts/05_verification_sources.md`

Commandes PowerShell depuis la racine du projet, après avoir décompressé ce patch dans le projet :

```powershell
mkdir docs -Force
xcopy .\codex_sources_patch\docs .\docs /E /I /Y
xcopy .\codex_sources_patch\prompts .\prompts /E /I /Y
```

Ajoute ensuite dans `AGENTS.md` :

```md
## Sources Minecraft du projet

Avant toute réponse ou modification concernant Minecraft Java, commandes, datapacks, resource packs, tags, composants d’items, shaders ou migration de version, lis `docs/sources_minecraft_projet.md` et applique sa hiérarchie de sources.

Ne valide jamais une syntaxe récente sans source officielle ou technique versionnée.
```
