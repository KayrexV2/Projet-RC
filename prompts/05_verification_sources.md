# Prompt Codex — Vérification des sources Minecraft

Avant de valider une syntaxe Minecraft Java récente, lis `docs/sources_minecraft_projet.md`.

Règles :
1. Distingue toujours Java Edition et Bedrock Edition.
2. Pour Minecraft Java 26.1, vérifie les changelogs officiels et au moins une source technique versionnée si la syntaxe est récente.
3. Pour les commandes `/give`, `/item`, `/execute`, `/summon`, utilise Minecraft Wiki, MCStacker et/ou Misode Versions.
4. Pour les data components, utilise Misode Versions, Minecraft Wiki, MCStacker et NBT2Components.
5. Pour les datapacks JSON, utilise Misode generators, Minecraft Wiki et Misode Versions.
6. Pour les tags, registries, predicates et loot tables, utilise Misode Versions, Misode generators et Minecraft Wiki.
7. N’utilise jamais un post Reddit, Discord, YouTube, forum ou générateur secondaire comme preuve unique.
8. Si le réseau n’est pas disponible, écris clairement : `À vérifier manuellement`.

Sortie attendue :
- sources consultées ;
- syntaxe ancienne si pertinente ;
- syntaxe nouvelle ;
- niveau de confiance ;
- points à tester en jeu.
