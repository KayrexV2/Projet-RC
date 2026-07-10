# Sources Minecraft du projet — extraction classée par catégories

Date d’extraction : 2026-07-09  
Objectif : regrouper les sources Minecraft du projet, en intégrant les références déjà données et les liens extraits des deux grands annuaires ajoutés : le gist **TMC Links** de JoakimThorsen et **FMHY Gaming Tools — Minecraft Tools**.

Ce fichier classe les ressources par **usage** plutôt que par fiabilité. Pour les réponses techniques récentes, notamment commandes Java, snapshots, datapacks, composants d’items, tags ou changements de version, il faut toujours vérifier sur le web au moment de répondre.

Sources annuaires utilisées :
- [TMC Links — JoakimThorsen](https://gist.github.com/JoakimThorsen/e90bd7a588af25ae529530987d9acc8a)
- [FMHY — Gaming Tools / Minecraft Tools](https://fmhy.net/gaming-tools#minecraft-tools)
- [Iris Docs / shaders.properties](https://shaders.properties/)

---

## 1. Sources officielles, annonces et changelogs

| Ressource | URL | Usage |
|---|---|---|
| Minecraft.net | https://www.minecraft.net/ | Releases, snapshots, pre-releases, release candidates, annonces Mojang. |
| Minecraft.net — Java Edition news | https://www.minecraft.net/en-us/articles?category=Java%20Edition | Notes de version Java Edition. |
| Feedback Minecraft | https://feedback.minecraft.net/ | Changelogs officiels, feedback, annonces techniques, bugs ou changements expérimentaux. |
| Minecraft Help Center | https://help.minecraft.net/ | Support officiel, comptes, launcher, problèmes connus. |

---

## 2. Documentation générale Minecraft

| Ressource | URL | Usage |
|---|---|---|
| Minecraft Wiki | https://minecraft.wiki/ | Documentation principale : blocs, items, entités, commandes, tags, composants, mécaniques. |
| Minecraft Wiki — Commands | https://minecraft.wiki/w/Commands | Référence générale des commandes. |
| Minecraft Wiki — Java Edition | https://minecraft.wiki/w/Java_Edition | Informations générales Java Edition. |
| Minecraft Wiki — Bedrock Edition | https://minecraft.wiki/w/Bedrock_Edition | Informations générales Bedrock Edition. |
| Minecraft Wiki — Data pack | https://minecraft.wiki/w/Data_pack | Structure et fonctionnement des datapacks. |
| Minecraft Wiki — Resource pack | https://minecraft.wiki/w/Resource_pack | Structure et fonctionnement des resource packs. |
| Minecraft Wiki — Villager trading cheatsheet | https://minecraft.wiki/w/Trading | Échanges des villageois. |
| Minecraft Wiki — Brewing | https://minecraft.wiki/w/Brewing | Potions et alchimie. |
| DigiMinecraft | https://www.digminecraft.com/ | Guides et exemples Minecraft, source secondaire. |
| Minecraft Forum | https://www.minecraftforum.net/ | Communauté, anciens mods, support, archives. |
| FTB Wiki | https://ftbwiki.org/ | Documentation modpacks Feed The Beast. |
| Minecraft Guides | https://www.minecraft-guides.com/ | Guides de mods, source secondaire. |

---

## 3. Versions, snapshots, registries et données techniques

| Ressource | URL | Usage |
|---|---|---|
| Misode Versions | https://misode.github.io/versions/ | Comparaison de versions, registries, données techniques, formats. |
| Minecraft Snapshot Reverse Engineering | https://tisawesomeness.github.io/snapshots | Analyse technique des snapshots. |
| Minecraft Timeline | https://minecraft-timeline.github.io/ | Historique des mises à jour Minecraft. |
| Minecraft Game Phase | https://github.com/Fallen-Breath/MinecraftGamePhase | Historique des phases de jeu. |
| Sl1m’s Optimal Every Platform Timeline | https://docs.google.com/spreadsheets/d/1CSOCSplHsTL3UNSQjHlDOFAafSYnekjqi7Djg5PFSME | Historique optimisé des versions et conversions de monde. |
| MCJars | https://mcjars.app/ | Archive de fichiers serveur `.jar`. |
| Minecraft Archive Project | https://map.crummy.com/ | Archive Minecraft. |
| Omniarchive | https://omniarchive.uk/ | Versions perdues ou anciennes builds de développement. |
| Discontinued Features Wiki | https://mcdf.wiki.gg/ | Fonctionnalités supprimées ou abandonnées. |

---

## 4. Commandes Java, `/give`, `/summon`, `/execute`, tellraw et générateurs

| Ressource | URL | Usage |
|---|---|---|
| MCStacker | https://mcstacker.net/ | Générateur de commandes Java moderne. |
| Misode Data Pack Generators | https://misode.github.io/ | Générateurs datapack et JSON, utile aussi pour vérifier les formats. |
| Minecraft.tools | https://minecraft.tools/en/ | Générateurs de commandes et datapacks, source secondaire. |
| GamerGeeks commands | https://www.gamergeeks.net/apps/minecraft/list-of-commands | Liste/générateur de commandes, source secondaire. |
| Mapmaking.fr | https://mapmaking.fr/ | Générateurs de commandes, notamment `/give`. |
| MinecraftJSON | https://www.minecraftjson.com/ | Générateur `tellraw`, texte JSON et messages. |
| Minecraft Armor Stand | https://haselkern.com/Minecraft-ArmorStand/ | Générateur de poses et commandes pour armor stands. |
| MC Utils | https://mcutils.com/ | Toolkit web Minecraft. |
| MCTools | https://mc-tools.net/ | Toolkit web Minecraft. |
| MCDOC | https://mcdoc.site/ | Outils Minecraft ; à utiliser avec prudence selon les sous-outils. |

---

## 5. Datapacks, predicates, loot tables, recipes, item modifiers et worldgen

| Ressource | URL | Usage |
|---|---|---|
| Misode generators | https://misode.github.io/ | Loot tables, predicates, advancements, recipes, item modifiers, worldgen. |
| Misode Versions | https://misode.github.io/versions/ | Vérification des formats disponibles par version. |
| Smithed | https://smithed.net/ | Datapacks et écosystème datapack. |
| Voodoo Packs | https://mc.voodoobeard.com/ | Datapacks Minecraft. |
| Vanilla Tweaks | https://www.vanillatweaks.net/ | Resource packs, datapacks et crafting tweaks semi-personnalisés. |
| Dimension datapack generator | https://worldgen.syldium.dev/ | Générateur de datapack de dimension personnalisée. |
| Minecraft Datapack Map | https://map.jacobsjo.eu/ | Carte/visualisation datapack. |
| Data Pack Generators — FMHY / Misode | https://misode.github.io/ | Entrée FMHY vers les générateurs Misode. |

---

## 6. NBT, composants d’items, conversion NBT → components

| Ressource | URL | Usage |
|---|---|---|
| Online NBT Editor / webNBT | https://irath96.github.io/webNBT/ | Éditeur NBT en ligne pour `.nbt`, `.dat`, `.dat_old`. |
| NBT Studio | https://github.com/tryashtar/nbt-studio | Éditeur NBT de bureau. |
| NBT2Components | https://misode.github.io/nbt2components/ | Conversion NBT vers composants d’items modernes. |
| MCStacker | https://mcstacker.net/ | Génération de commandes avec composants. |
| Misode Versions | https://misode.github.io/versions/ | Vérification des composants disponibles par version. |

---

## 7. Fabric, modding Java, loaders et mappings

| Ressource | URL | Usage |
|---|---|---|
| Fabric Wiki | https://wiki.fabricmc.net/start | Documentation Fabric, Loom, Yarn, setup modding. |
| Fabric | https://fabricmc.net/ | Site principal Fabric. |
| Fabric example mod | https://fabricmc.net/wiki/tutorial:setup | Template de mod Fabric. |
| Fabric mappings tutorial | https://fabricmc.net/wiki/tutorial:mappings | Mappings Yarn/Mojmap côté Fabric. |
| Linkie | https://linkie.shedaniel.dev/mappings | Recherche de classes, méthodes et champs dans différents mappings. |
| DecompilerMC | https://github.com/hube12/DecompilerMC | Décompilation de versions Minecraft avec mappings Mojang. |
| MCP-Reborn | https://github.com/Hexeption/MCP-Reborn | Mod Coder Pack moderne. |
| NeoForged | https://neoforged.net/ | Loader / plateforme modding NeoForge. |
| Forge | https://files.minecraftforge.net/ | Loader Forge. |
| Quilt | https://quiltmc.org/ | Loader Quilt. |
| MCreator | https://mcreator.net/ | Création de mods, plugins, datapacks, addons via interface visuelle. |
| MCreator Hardware Link | https://github.com/MCreator/MCreatorLink | Lien MCreator vers matériel externe. |
| Mineflayer | https://prismarinejs.github.io/mineflayer/ | Création de bots Minecraft en JavaScript. |
| PrismarineJS | https://github.com/PrismarineJS | Écosystème JavaScript autour du protocole Minecraft. |

---

## 8. Mods, modpacks, index de mods et listes de mods

| Ressource | URL | Usage |
|---|---|---|
| Modrinth | https://modrinth.com/ | Mods, resource packs, datapacks, shaders. |
| CurseForge Minecraft | https://www.curseforge.com/minecraft | Mods et modpacks. |
| UsefulMods | https://github.com/TheUsefulLists/UsefulMods | Liste de mods d’optimisation et d’amélioration. |
| A list of almost all Fabric mods | https://gist.github.com/John-Paul-R/6819feb2f2f794df06ae678878cddaf3 | Liste de mods Fabric. |
| Server-side Fabric mods | https://github.com/Alex22sv/Aternos-server-side-Fabric-mods | Mods Fabric côté serveur. |
| OptiFine Alternatives | https://lambdaurora.dev/optifine_alternatives/ | Alternatives à OptiFine. |
| OptiFine Alternatives for Fabric | https://optifine.alternatives.lambdaurora.dev/ | Alternatives OptiFine orientées Fabric. |
| Not Essential | https://alternatives.microcontrollers.dev/ | Alternatives au mod Essential. |
| FiberMC | https://www.fibermc.com/ | Index de mods Fabric. |
| MC Archive | https://mcarchive.net/ | Anciens mods. |
| Archive Beta 1.7.3 mods | https://ia902805.us.archive.org/view_archive.php?archive=/20/items/minecraftbeta1.7.3modarchive/Minecraft%20Beta%201.7.3%20Mod%20Archive.zip | Archive de mods Beta 1.7.3. |
| ModpackIndex | https://www.modpackindex.com/ | Index de modpacks. |
| Packwiz | https://packwiz.infra.link/ | Distribution CLI de modpacks. |
| ModPack Dependency Visualizer | https://arcbra.github.io/ModPack-Dependency-Visualizer/ | Visualisation de dépendances de modpacks. |
| Planet Minecraft | https://www.planetminecraft.com/ | Mods, maps, skins, packs. |
| r/feedthebeast | https://www.reddit.com/r/feedthebeast/ | Communauté modding Minecraft. |

---

## 9. ETF, EMF, modèles d’entités et personnalisation visuelle avancée

| Ressource | URL | Usage |
|---|---|---|
| GitHub Traben-0 | https://github.com/Traben-0 | Mods ETF/EMF, personnalisation textures et modèles d’entités. |
| Entity Texture Features | https://github.com/Traben-0/Entity_Texture_Features | Fonctionnalités de textures d’entités. |
| Entity Model Features | https://github.com/Traben-0/Entity_Model_Features | Fonctionnalités de modèles d’entités. |
| Blockbench | https://www.blockbench.net/ | Modélisation low-poly, modèles Minecraft, entités, items. |
| Minecraft Generator | https://minecraftgenerator.com/ | Générateurs de modèles Minecraft. |
| Block Display | https://block-display.com/ | Conception et partage de modèles en block display. |
| BDStudio | https://eszesbalint.github.io/bdstudio/ | Éditeur 3D. |
| Bedrock Editor | https://github.com/Bedrock-OSS/bedrock-editor | Éditeur 3D / Bedrock. |
| ObjToSchematic | https://objtoschematic.com/ | Conversion de modèles 3D vers formats Minecraft. |
| Custom-MC-Render-Cweeper | https://rentry.co/Custom-MC-Render-Cweeper | Import de modèles 3D custom dans Minecraft. |
| Mine-imator | https://www.mineimator.com/ | Animation Minecraft. |
| Mine-imator forums | https://www.mineimatorforums.com/ | Forum et ressources Mine-imator. |
| Chunky | https://chunky-dev.github.io/ | Rendu photoréaliste de scènes Minecraft. |
| Mineways | https://www.realtimerendering.com/erich/minecraft/public/mineways/ | Export de mondes Minecraft. |
| MiEX | https://bramstout.nl/miex/ | Exporteur de monde Minecraft. |
| Minutor | https://seancode.com/minutor/ | Visualisateur/exporteur de monde. |

---


## 10. Shaders, Iris, OptiFine shader properties et documentation GLSL

| Ressource | URL | Usage |
|---|---|---|
| Iris Docs / shaders.properties | https://shaders.properties/ | Documentation Iris pour créer des shaders Minecraft, avec références techniques autour des propriétés de shaders. |
| Iris Shaders | https://modrinth.com/mod/iris | Shadermod Fabric moderne, compatible Sodium. |
| ShaderLABS | https://shaderlabs.org/ | Comparaisons et ressources shaders. |
| ShadersMods | https://shadersmods.com/ | Shaders Minecraft, source secondaire. |
| MinecraftShader | https://minecraftshader.com/ | Shaders Minecraft, source secondaire. |
| OptiFine Alternatives | https://lambdaurora.dev/optifine_alternatives/ | Alternatives modernes à OptiFine, utile pour situer Iris/Sodium. |

## 11. Resource packs, textures, skins, capes et personnalisation joueur

| Ressource | URL | Usage |
|---|---|---|
| PackCrafter | https://packcrafter.net/ | Création de resource packs. |
| Vanilla Tweaks | https://www.vanillatweaks.net/ | Resource packs et datapacks personnalisables. |
| Bedrock Tweaks | https://bedrocktweaks.net/ | Port non officiel de Vanilla Tweaks pour Bedrock. |
| NameMC | https://namemc.com/ | Suivi pseudos, skins, disponibilité. |
| Laby | https://laby.net/ | Suivi skin/nom, communauté. |
| Crafty | https://crafty.gg/ | Suivi nom/skin. |
| MinecraftSkins | https://www.minecraftskins.com/ | Skins Minecraft. |
| SkinMC | https://skinmc.net/ | Skins et profils. |
| MSkins | https://mskins.net/ | Skin grabber. |
| Ely.by | https://ely.by/ | Système de skins et authentification alternative ; à utiliser avec prudence. |
| NeedCoolerShoes | https://needcoolershoes.com/ | Éditeur de skin. |
| Nova Skin | https://minecraft.novaskin.me/ | Éditeur de skin. |
| SkinsRestorer | https://skinsrestorer.net/ | Plugin de restauration de skins serveur. |
| MinecraftCapes | https://minecraftcapes.net/ | Capes Minecraft. |
| Capes — Modrinth | https://modrinth.com/mod/capes | Mod de capes. |
| Minecraft Heads | https://minecraft-heads.com/ | Têtes custom. |
| PVPRP | https://pvprp.com/ | Packs de texture PvP. |
| PacksMC | https://packsmc.com/ | Packs de texture. |
| ConvertMCPack | https://convertmcpack.net/ | Conversion de versions de packs de textures. |
| ShaderLABS | https://shaderlabs.org/ | Comparaisons et ressources shaders. |
| ShadersMods | https://shadersmods.com/ | Shaders Minecraft. |
| MinecraftShader | https://minecraftshader.com/ | Shaders Minecraft. |
| Iris Shaders | https://modrinth.com/mod/iris | Shadermod Fabric. |

---

## 12. Serveurs, hébergement, administration et logs

| Ressource | URL | Usage |
|---|---|---|
| FMHL | https://www.myuui.com/ | Liste d’hébergeurs Minecraft gratuits. |
| auto-mcs | https://www.auto-mcs.com/ | Gestionnaire serveur / setup facile. |
| Playit.gg | https://playit.gg/ | Proxy global / tunnel pour serveur. |
| World Host | https://modrinth.com/mod/world-host | Mod pour multijoueur local. |
| e4mc | https://modrinth.com/mod/e4mc | Tunnel pour multijoueur local. |
| setup.md | https://setup.md/ | Guides admin serveur. |
| CraftyControl | https://craftycontrol.com/ | Gestionnaire serveur. |
| MCSManager | https://mcsmanager.com/ | Gestionnaire serveur. |
| Fork | https://www.fork.gg/ | Gestionnaire serveur. |
| SquidServers | https://squidservers.com/ | Hébergement / serveur facile. |
| MCJars | https://mcjars.app/ | Archive de jars serveur. |
| GrimAC | https://modrinth.com/plugin/grimac | Anti-cheat serveur. |
| Minekube Connect | https://connect.minekube.com/ | Tunnel ingress pour serveurs Minecraft. |
| ViaVersion | https://viaversion.com/ | Connexions depuis versions anciennes. |
| mclo.gs | https://mclo.gs/ | Partage et analyse de logs Minecraft. |
| Minestom | https://minestom.net/ | Serveur Minecraft léger. |
| DriveBackupV2 | https://modrinth.com/plugin/drivebackupv2 | Backups cloud de mondes serveur. |
| Pufferfish | https://github.com/pufferfish-gg/Pufferfish | Serveur performance. |
| Purpur | https://purpurmc.org/ | Serveur performance. |
| Paper | https://papermc.io/ | Serveur performant compatible plugins. |
| Hangar PaperMC | https://hangar.papermc.io/ | Plugins Paper. |
| GeyserMC | https://geysermc.org/ | Connexion Bedrock vers serveur Java. |
| GeyserMC consoles guide | https://wiki.geysermc.org/geyser/using-geyser-with-consoles/ | Guide consoles Bedrock via Geyser. |
| ExploitPreventer | https://modrinth.com/plugin/exploitpreventer | Prévention d’exploits côté client. |
| ServerPackCreator | https://serverpackcreator.de/ | Création de packs serveur depuis modpacks. |
| mcsrvstat | https://mcsrvstat.us/ | Statut de serveur Minecraft. |
| MC-Server-Banner-API | https://github.com/LeStegii/MC-Server-Banner-API | Bannières serveur temps réel. |

---

## 13. Optimisation, performance, profiling et crash reports

| Ressource | URL | Usage |
|---|---|---|
| spark | https://spark.lucko.me/ | Profiler performance Minecraft. |
| Minecraft Java Flags | https://unascribed.com/garden/jvm-args/ | Flags Java pour Minecraft. |
| Report Inspector | https://misode.github.io/report-inspector/ | Inspection crash report / profiling. |
| paper-optimization | https://paper-chan.moe/paper-optimization/ | Guide d’optimisation serveur Paper. |
| minecraft-optimization | https://github.com/YouHaveTrouble/minecraft-optimization | Guide d’optimisation serveur. |
| Voxy | https://modrinth.com/mod/voxy | Rendu de distance léger. |
| Distant Horizons | https://modrinth.com/mod/distanthorizons | Rendu longue distance. |
| Bobby | https://modrinth.com/mod/bobby | Cache de chunks et distance de rendu. |
| Nvidium | https://modrinth.com/mod/nvidium | Optimisation rendu Nvidia/OpenGL. |
| VulkanMod | https://modrinth.com/mod/vulkanmod | Rendu via Vulkan. |
| No Telemetry | https://modrinth.com/mod/no-telemetry | Désactivation télémétrie. |

---

## 14. Cartes, mondes, seeds, structures et édition de monde

| Ressource | URL | Usage |
|---|---|---|
| Chunkbase | https://www.chunkbase.com/apps | Cartes de seed, structures, biomes, slime chunks. |
| MCSeedMap | https://mcseedmap.net/ | Visualisateur de seed. |
| MineAtlas | https://mineatlas.com/ | Visualisateur de seed. |
| Seeds.gg | https://www.seeds.gg/ | Seeds Minecraft. |
| Cubiomes Viewer | https://github.com/Cubitect/cubiomes-viewer | Visualisation/analyse de seeds. |
| Amidst | https://github.com/toolbox4minecraft/amidst | Aperçu de monde / seed. |
| MineMap | https://github.com/hube12/MineMap | Cartographie / visualisation de monde. |
| MCA Selector | https://github.com/Querz/mcaselector | Sélection et suppression de chunks/régions. |
| uNmINeD | https://unmined.net/ | Viewer de monde. |
| WorldPainter | https://www.worldpainter.net/ | Éditeur de monde. |
| MapVerse | https://mapverse.net/ | Télécharger / jouer des serveurs maps Minecraft. |
| MinecraftMaps | https://www.minecraftmaps.com/ | Maps Minecraft. |
| Mapcraft | https://mapcraft.me/ | Maps Minecraft. |
| Minecraft Earth Map | https://earth.motfe.net/ | Cartes de la Terre dans Minecraft. |
| CTMRepository | https://ctmrepository.com/ | Maps Complete The Monument. |
| Rebane MapartCraft | https://rebane2001.com/mapartcraft/ | Générateur mapart schematic et `map.dat`. |
| Cartographer | https://cartographer-mc.com/ | Générateur mapart. |
| BlueMap | https://bluemap.bluecolored.de/ | Cartes 3D interactives. |
| Arnis | https://arnismc.com/ | Génération de lieux réels dans Minecraft. |
| je2be-web | https://je2be.app/ | Convertisseur de fichiers Minecraft. |
| Chunker | https://oss.chunker.app/ | Conversion Java / Bedrock. |
| Minecraft Map Converter | https://archive.org/details/minecraft-map-converter | Conversion PS3/X360. |
| Custom Worlds | https://superflat.crackedmagnet.com/ | Générateur Bedrock superflat / single biome. |
| Mineways | https://www.realtimerendering.com/erich/minecraft/public/mineways/ | Export de mondes vers outils 3D. |

---

## 15. Redstone, fermes, stockage technique et Technical Minecraft

| Ressource | URL | Usage |
|---|---|---|
| TMC Links | https://gist.github.com/JoakimThorsen/e90bd7a588af25ae529530987d9acc8a | Annuaire Technical Minecraft. |
| Technical Minecraft Wiki | https://techmcdocs.github.io/ | Documentation TMC. |
| Storage Tech Dictionary | https://storagetechdictionary.github.io/ | Lexique storage tech. |
| Resources to learn advanced Redstone | https://gist.github.com/pwouik/a3f5b4afcb3ff9ea0eeebb21b4a9ebdf | Ressources redstone avancée. |
| RSEditor | https://11-90-an.github.io/rseditor/ | Dessin 2D de circuits redstone. |
| On redstone timings and piston mechanics | https://docs.google.com/document/d/1Nn6-zg2YBIIf0BTSijpmLztV5oasVI_4H-k5bwU6KdE | Timings redstone et pistons. |
| Beginner’s Guide to Update Skipping | https://gist.github.com/youmukonpaku1337/f038698ccfca1b757123490208559093 | Guide update skipping. |
| 1.14.x Chunk Loading | https://gist.github.com/Drovolon/24bfaae00d57e7a8ca64b792e14fa7c6 | Chunk loading 1.14.x. |
| Minecraft Mob Spawning | https://blog.bithole.dev/blogposts/mob-spawning/ | Mécaniques de spawn 1.19. |
| TNT Cannoning Resources | https://gist.github.com/pwouik/2c7ffd4e0f8ac96f4e115dedde46e84a | Ancienne ressource TNT, indiquée dépréciée. |
| TNT Archive Resources | https://gist.github.com/lntricate1/e7a2c3f0e10eaa40ac932cab74619ea7 | Ressources TNT mises à jour. |
| TNT Archive | https://tntarchive.github.io/about.html | Techniques liées aux canons à TNT. |
| Threadstone Wiki | https://github.com/Threadstone-Wiki/Threadstone-Wiki/tree/main | Falling blocks, bugs et threadstone. |
| Minecraft Parkour Wiki | https://www.mcpk.wiki/wiki/Main_Page | Mécaniques parkour, surtout Java 1.8. |
| Minecraft Property Encyclopedia | https://joakimthorsen.github.io/MCPropertyEncyclopedia/ | Propriétés blocs, entités, items. |
| Carpet Rules Database | https://github.com/Crec0/carpet-rules-database | Règles Carpet Mod et extensions. |
| Carpet Config Creator | https://carpet.rubixdev.de/ | Création de configurations Carpet. |
| Hopper clock timer calculator | https://web.archive.org/web/20220818103054/http://monsieurtouf.fr/tools/hopper-timer-calculator | Calcul de timer hopper. |
| Portal Model | https://www.desmos.com/calculator/xride4g08o | Modèle 2D de recherche de portail Nether. |
| Amethyst tool | https://russellsprouts.github.io/minecraft-amethyst-tool/ | Optimisation des budding amethyst blocks. |

---

## 16. Enchantements, trims, outils de calcul et données de blocs

| Ressource | URL | Usage |
|---|---|---|
| Minecraft enchantment ordering tool | https://iamcal.github.io/enchant-order/ | Optimisation ordre enchantements selon niveaux. |
| Minecraft Enchant Order Calculator | https://kkchengaf.github.io/Minecraft-Enchantment-Order-Calculator/ | Optimisation selon XP. |
| Enchant optimally! | https://enchant.knawk.net/ | Optimisation d’enchantements, God Armor 1.14–1.14.2. |
| anvil-calc | https://virb3.github.io/anvil-calc/ | Calculateur d’enclume en YAML/Rust. |
| MCEnchant | https://mcenchant.com/ | Calculateur d’ordre d’enchantement, mentionné dans les commentaires du gist. |
| Minecraft Trim Generator | https://minetrim.com/ | Générateur armor trims. |
| ArmorTrims.com | https://armortrims.com/ | Visualiseur armor trims. |
| Minetrim | https://minetrim.com/ | Générateur armor trim, entrée FMHY. |
| Block Break Times | https://okx.sh/break/ | Calcul temps de cassage. |
| Breaking Time Calculator Spreadsheet | https://docs.google.com/spreadsheets/d/1y2FIAu5n4FNZQWkcutAYBiRg6FCtO0wmkFnFH-OMBzE/edit?gid=0#gid=0 | Tableur temps de cassage. |
| Minecraft Property Encyclopedia | https://joakimthorsen.github.io/MCPropertyEncyclopedia/ | Tables filtrables blocs/items/entités. |
| MCUUID.net | https://mcuuid.net/ | Recherche et conversion pseudo/UUID. |

---

## 17. Bedrock Edition, conversions Java/Bedrock et outils Bedrock

| Ressource | URL | Usage |
|---|---|---|
| MCBE Essentials | https://mcbe-essentials.github.io/world-generator/ | Générateurs, visualiseurs et convertisseurs Bedrock. |
| BedrockConnect | https://github.com/Pugmatt/BedrockConnect | Connexion consoles vers serveurs Bedrock custom. |
| Bedrock Servers | https://dankware.alwaysdata.net/bedrock/ | Liste serveurs Bedrock. |
| Bedrock Launcher | https://bedrocklauncher.github.io/ | Launcher Bedrock UWP. |
| LeviLauncher | https://levilauncher.levimc.org/ | Launcher Bedrock avec support GDK. |
| WineGDK | https://github.com/minecraft-linux/mcpelauncher-manifest | Lancer Bedrock via WineGDK/Linux, à vérifier selon contexte. |
| Toolchest | https://bedrocktoolchest.com/ | Éditeur Bedrock. |
| Bedrock Tweaks | https://bedrocktweaks.net/ | Tweaks resource packs / behavior packs Bedrock. |
| ModBay | https://modbay.org/ | Mods/contenu Bedrock. |
| MCPEDL | https://mcpedl.com/ | Mods/contenu Bedrock. |
| BedrockExplorer | https://www.bedrockexplorer.com/ | Contenu Bedrock. |
| Chunker | https://oss.chunker.app/ | Convertisseur Java / Bedrock. |
| je2be-web | https://je2be.app/ | Convertisseur Java / Bedrock. |
| GeyserMC | https://geysermc.org/ | Connexion Bedrock vers serveurs Java. |
| MCBE Essentials | https://mcbe-essentials.github.io/ | Outils Bedrock variés. |

---

## 18. Vidéos éducatives Technical Minecraft et redstone

| Ressource | URL | Usage |
|---|---|---|
| Dissecting Minecraft | https://www.youtube.com/playlist?list=PLcSOIxw2nIE2OpQxG1ckMLsQ22Mu4Aiuc | Série technique LogicalGeekBoy & Methodz. |
| Fun Farms | https://www.youtube.com/watch?v=guvMmdeZqiI | Série de Gnembon sur les fermes. |
| Practical Redstone | https://www.youtube.com/playlist?list=PLmEBf0WZp2qvXdAP3GTJAun78--f7R3tG | Bases redstone. |
| Practical Redstone Reloaded | https://www.youtube.com/playlist?list=PLmEBf0WZp2qs8aoteq1SaMg2pm-IILr88 | Refonte de Practical Redstone. |
| Learn About Redstone! | https://www.youtube.com/playlist?list=PLKxSx7d2SH2VpIhXJpteX3YthplzYeiSk | Redstone orientée computation. |
| Compact Redstone: A Piston Door Making View | https://www.youtube.com/playlist?list=PLDxFLIDNIzqsC4rh1aqko97Qqd7sM_Bj6 | Portes à pistons compactes. |
| Learn Logical Redstone | https://www.youtube.com/playlist?list=PL5LiOvrbVo8ksCgm_HTLfwhHRdnx11Gms | Redstone logique/computationnelle. |
| Logical Redstone Reloaded | https://www.youtube.com/playlist?list=PL5LiOvrbVo8keeEWRZVaHfprU4zQTCsV4 | Refonte de Learn Logical Redstone. |
| Redstone... QUICK | https://www.youtube.com/playlist?list=PLR8TRqKfkq7vLkxbC_kbxJPzwm_Tw8lvH | Introduction rapide. |
| Encoded Storagetech | https://www.youtube.com/playlist?list=PL-AYZR3JIeIeGCH54lSXAMORKICquVs7q | Stockage encodé. |
| Explaining Minecraft | https://www.youtube.com/playlist?list=PLFftmjZcJUwsXJWLzls_GMAcdYSkxKn1x | Explications de mécaniques complexes. |
| Lets Learn Redstone | https://www.youtube.com/playlist?list=PLGa7CT8zHx9ElM0P2sH6EgS2jiv8UJRz7 | Redstone accessible pour survie casual. |

---

## 19. Programmes TMC, seedfinding et analyse de monde

| Ressource | URL | Usage |
|---|---|---|
| fnseedc | https://github.com/SeedFinding/fnseedc | Ressources seedcracking. |
| Slimefinder | https://github.com/Nukelawe/slimefinder | Recherche de slime chunks. |
| Slimy | https://github.com/silversquirl/slimy-go | Slime chunk finder accéléré GPU. |
| CrossroadFinder | https://github.com/Gaider10/CrossroadFinder | Recherche de crossroads / structures. |
| Bedrock Formation Finder 1.14–1.17 | https://www.youtube.com/watch?v=rSaZezzK2os | Recherche formation bedrock anciennes versions. |
| Bedrock Formation Finder 1.18+ | https://github.com/Developer-Mike/Minecraft-Bedrock-Formation-Finder-1.18 | Recherche formation bedrock 1.18+. |
| Fortress finder | https://github.com/green-new/find-fortress | Recherche de forteresses. |
| Geode finder | https://github.com/soulsoiledit/geode-finder | Recherche de géodes. |
| Slime cluster pattern finder | https://github.com/KK-mp4/Slime-Cluster-Pattern-Finder | Recherche patterns clusters slime chunks. |

---

## 20. Scarpet, Carpet Mod et scripts d’automatisation

| Ressource | URL | Usage |
|---|---|---|
| Gnembon Scarpet | https://github.com/gnembon/scarpet | Dépôt Scarpet. |
| CommandLeo Scarpet | https://github.com/CommandLeo/scarpet | Dépôt Scarpet. |
| firigion scarpets | https://github.com/firigion/scarpets | Dépôt Scarpet. |
| Ghoulboy78 scripts | https://github.com/Ghoulboy78/scripts | Dépôt Scarpet. |
| BisUmTo scarpet | https://github.com/BisUmTo/scarpet | Dépôt Scarpet. |
| rv3r Scarpet scripts | https://github.com/rv3r/Scarpet-scripts | Dépôt Scarpet. |
| Carpet Rules Database | https://github.com/Crec0/carpet-rules-database | Règles Carpet. |
| Carpet Config Creator | https://carpet.rubixdev.de/ | Générateur config Carpet. |

---

## 21. Communautés, Discords, Reddit et support spécialisé

| Ressource | URL | Usage |
|---|---|---|
| r/MinecraftCommands | https://www.reddit.com/r/MinecraftCommands/ | Commandes, datapacks, cas pratiques communautaires. |
| r/feedthebeast | https://www.reddit.com/r/feedthebeast/ | Modding Minecraft. |
| Minecraft Forum | https://www.minecraftforum.net/ | Communauté, support, archives. |
| Minecraft Tech Discord Recollector | https://discord.gg/UT8ns46As9 | Répertoire Discord TMC. |
| Technical Minecraft Community | https://discord.gg/CM52CAH | Communauté TMC. |
| Tech MC Archive | https://discord.gg/Bh7Kasf | Archive TMC. |
| Storage Tech Discord | https://discord.gg/JufJ6uf | Storage tech. |
| TMC Catalogue | https://discord.gg/tvpccRczWx | Catalogue TMC. |
| Mob Farm Archive | https://discord.gg/FDezNwZ3Rd | Ancien/inactif selon gist. |
| Slimestone Tech Archive | https://discord.gg/UBnE2ym3cK | Slimestone. |
| Tree Huggers | https://discord.gg/8bUbuuS | Fermes à arbres. |
| Huge Fungus Huggers | https://discord.gg/EKKkyfcPPV | Fermes à fungus géants. |
| Iron Lovers Discord | https://discord.gg/QEAgkPXgqy | Fermes à fer. |
| TNT Archive Discord | https://discord.gg/vPyUBcdmZV | TNT / canons. |
| Cartchives | https://discord.gg/8nGNTewveC | Cart tech. |
| Autocrafting Archive | https://discord.gg/guZdbQ9KQe | Autocrafting. |
| Wither Archive | https://discord.gg/Ea28MyKB3J | Wither tech. |
| Saints of Suppression | https://discord.gg/xa7QWAeAng | Suppression. |
| Threadstone Archive | https://discord.gg/EqNDFWjsUh | Threadstone. |
| Computational Minecraft Archive | https://discord.gg/jSe4jR5Kx7 | Redstone computationnelle. |
| Journal for Video Game Strategies | https://discord.gg/CYFsyPqkr9 | Stratégies techniques. |
| Technical Minecraft Wiki Discord | https://discord.gg/FcTFg2E | Discord TMC Wiki. |
| Minecraft Wiki Discord | https://discord.gg/fGdE5ZE | Discord Minecraft Wiki. |

---

## 22. Map art, pixel art, block palettes et construction

| Ressource | URL | Usage |
|---|---|---|
| Blockmatic | https://blockmatic.trafficlunar.net/ | Éditeur pixel art Minecraft. |
| PixelStacker | https://taylorlove.info/ | Import d’images vers Minecraft art. |
| MinecraftArt | https://minecraftart.org/ | Import d’images vers Minecraft art. |
| Minecraft Pixel Art | https://minecraft-pixel-art.com/ | Pixel art Minecraft. |
| HueBlocks | https://1280px.github.io/hueblocks/ | Générateur de gradients de blocs. |
| Block Palettes | https://www.blockpalettes.com/ | Palettes de blocs. |
| Block Colors | https://blockcolors.app/ | Palettes de couleurs de blocs. |
| Minemev | https://minemev.com/ | Schematics de builds/farms. |
| MCBuild | https://mcbuild.org/ | Schematics de builds/farms. |
| CreateMod | https://createmod.com/ | Schematics / ressources Create. |
| Cubical | https://www.cubical.xyz/ | Outil 3D schematic Minecraft. |
| Minecraft Shapes | https://minecraftshapes.com/ | Générateur de formes. |
| VoxelSphereGenerator | https://oranj.io/ | Générateur de sphères/voxels. |
| Layoutit Voxels | https://voxels.layoutit.com/ | Éditeur voxels. |
| Vengi Voxel | https://vengi-voxel.github.io/ | Éditeur voxel. |

---

## 23. Audio, note blocks, textes et éléments visuels

| Ressource | URL | Usage |
|---|---|---|
| Note Block Studio | https://noteblock.studio/ | Composition note blocks. |
| NoteBlock World | https://noteblock.world/ | Partage de musiques note blocks. |
| MiniMessageViewer | https://webui.advntr.dev/ | Formatage de messages plugin MiniMessage. |
| Textcraft | https://textcraft.net/ | Générateur texte/logo style Minecraft. |
| MC Icons | https://mcicons.ccleaf.com/ | Recherche d’icônes Minecraft. |

---

## 24. Speedrun, TAS, bots et usages avancés

| Ressource | URL | Usage |
|---|---|---|
| Minecraft Speedrunning | https://www.minecraftspeedrunning.com/ | Ressources speedrun Minecraft. |
| Minecraft TAS | https://minecrafttas.com/ | Communauté/outils/tutoriels TAS Minecraft. |
| Mineflayer | https://prismarinejs.github.io/mineflayer/ | Création de bots Minecraft. |
| Minecraft Property Encyclopedia | https://joakimthorsen.github.io/MCPropertyEncyclopedia/ | Données propriétés blocs/items/entités. |

---

## 25. Infographies et aides visuelles

| Ressource | URL | Usage |
|---|---|---|
| Optimal MC Enchant order for anvils | https://cdn.discordapp.com/attachments/211786369951989762/1029852650184917082/enchant_order.png | Infographie ordre d’enchantement. |
| Trading and Bartering Guide | https://static.wikia.nocookie.net/minecraft_gamepedia/images/e/e5/Trading_and_Bartering_Guide_for_Minecraft_Java_Edition_1.17%2B.png | Échanges et troc. |
| Brewing flowchart | https://static.wikia.nocookie.net/minecraft_gamepedia/images/7/7b/Minecraft_brewing_en.png | Potions. |
| Ore distribution sheet | https://static.wikia.nocookie.net/minecraft_gamepedia/images/e/e3/1-18-ore-distribution.jpg | Distribution minerais. |

---

## 26. Annuaires et méga-listes Minecraft

| Ressource | URL | Usage |
|---|---|---|
| FMHY Gaming Tools — Minecraft section | https://fmhy.net/gaming-tools#minecraft-tools | Très gros annuaire d’outils Minecraft. |
| JoakimThorsen — TMC Links | https://gist.github.com/JoakimThorsen/e90bd7a588af25ae529530987d9acc8a | Annuaire Technical Minecraft. |
| Awesome Minecraft | https://github.com/bs-community/awesome-minecraft | Liste de ressources Minecraft. |
| MCDOC | https://mcdoc.site/ | Annuaire/outillage Minecraft ; prudence selon les sous-outils. |

---

## 27. Sources explicitement à traiter avec prudence ou à ne pas utiliser comme référence principale

Ces entrées peuvent apparaître dans les annuaires, notamment FMHY, mais elles ne doivent pas servir de base normale pour répondre à des questions techniques Minecraft Java/datapack/commandes.

| Type | Exemples | Raison |
|---|---|---|
| Launchers non officiels / alt-auth / offline / cracked | entrées FMHY de launchers non premium ou forks alt-auth | Risque légal, sécurité, contournement d’authentification, non pertinent pour les commandes/datapacks. |
| Outils “unlockers” ou assimilés | certaines entrées de MCDOC/FMHy selon sous-page | À vérifier au cas par cas ; ne pas utiliser pour contourner licences ou restrictions. |
| Sources communautaires non versionnées | Reddit, certains générateurs secondaires, forums anciens | Utiles pour explorer, mais à recouper avec Minecraft Wiki, minecraft.net, Misode ou MCStacker. |
| Outils anciens non maintenus | anciens gists, archives, certains outils 1.14/1.8 | Utiles seulement si la question concerne précisément l’ancienne version. |

---

## 28. Règle d’utilisation recommandée dans ce projet

Pour une question Minecraft, choisir les sources selon le type de demande :

| Type de question | Sources à privilégier |
|---|---|
| Dernière version, snapshot, release candidate | minecraft.net, feedback.minecraft.net, Minecraft Wiki. |
| Commande `/give`, `/item`, `/execute`, `/summon` | Minecraft Wiki, MCStacker, Misode Versions. |
| Composants d’items et changements NBT/components | Misode Versions, Minecraft Wiki, MCStacker, NBT2Components. |
| Datapacks JSON | Misode generators, Minecraft Wiki, Misode Versions. |
| Tags, registries, predicates, loot tables | Misode Versions, Misode generators, Minecraft Wiki. |
| Fabric/modding Java | Fabric Wiki, Fabric site, Linkie, GitHub du mod concerné. |
| ETF/EMF/resource packs entités | GitHub Traben-0, documentation du mod, issues GitHub. |
| Shaders / Iris / shader properties | Iris Docs / shaders.properties, Iris, ShaderLABS, documentation du shader concerné. |
| Serveur / Paper / Geyser / performance | Paper, Purpur/Pufferfish, spark, mclo.gs, Report Inspector, guides d’optimisation. |
| Redstone / TMC / farms | TMC Wiki, JoakimThorsen, Discords spécialisés, vidéos techniques, puis test/version. |
| Bedrock | Minecraft Wiki Bedrock, MCBE Essentials, Geyser/Chunker/Bedrock docs selon contexte. |
| Recherche d’outil | FMHY, JoakimThorsen, Awesome Minecraft. |

Règle générale : ne jamais valider une syntaxe récente, un composant, un tag ou un format uniquement à partir d’un annuaire, d’un générateur secondaire ou d’un post communautaire. Toujours recouper avec au moins une source technique versionnée ou officielle.
