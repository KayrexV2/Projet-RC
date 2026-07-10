# Prompt Codex — Pré-audit lecture seule

Analyse ce dépôt comme un projet Minecraft Java datapack/resource pack.

Version source probable : 1.21.4.
Version cible : 26.1.
Édition : Java Edition uniquement.

Objectifs :
1. Cartographier la structure du projet.
2. Identifier les namespaces datapack et les namespaces resource pack.
3. Repérer les fichiers sensibles à une migration vers 26.1.
4. Lister les breaking changes probables.
5. Proposer un plan de migration par lots cohérents.
6. Produire un rapport Markdown dans `reports/migrations/preaudit_26_1.md`.

Contraintes :
- Ne modifie aucun fichier.
- Ne lance aucune commande destructive.
- Ne fais aucun commit.
- Si une syntaxe doit être vérifiée en ligne mais que le réseau est indisponible, marque-la `À vérifier manuellement`.
- Distingue Java Edition et Bedrock Edition.
