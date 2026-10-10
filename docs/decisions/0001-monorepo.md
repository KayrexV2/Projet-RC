# 0001 — Conserver un monorepo

- Date : 2026-10-10
- Statut : retenu pour l'organisation locale demandée ; publication GitHub en attente de validation.

## Contexte

Le projet Retrowave Challenger / Retro Action Verge possède un datapack et un resource pack associés. Un mod Minecraft Java est prévu, mais son loader et son périmètre ne sont pas encore validés. Notion accueille la conception ; GitHub accueille le développement et le suivi.

## Décision

Conserver le dépôt unique `KayrexV2/Projet-RC`, les chemins actuels des deux packs et `scripts/` pour les outils. Ajouter `mod/README.md` comme réservation sans initialiser Gradle, Fabric ou NeoForge. Regrouper la documentation d'organisation dans `docs/` et les modèles de contribution dans `.github/`.

Le dépôt Retrowave-Challenger-Legacy sert d'archives. Aucune migration ou suppression de son contenu n'est incluse dans cette décision.

## Conséquences

- Les changements touchant plusieurs composants restent consultables dans un même diff et une même Issue.
- Les ressources et la logique existantes conservent leurs chemins et leur comportement.
- Les interfaces et versions testées doivent être explicites pour chaque évolution transversale.
- Les futurs outils de build et de distribution seront décidés lorsque le mod sera spécifié ; le monorepo n'impose pas un build commun.

La séparation en plusieurs dépôts pourra être reconsidérée si les composants deviennent réellement indépendants. Pour l'état actuel, elle ajouterait du suivi sans besoin établi.

Voir l'[architecture](../repository-architecture.md) et le [workflow](../workflow.md).
