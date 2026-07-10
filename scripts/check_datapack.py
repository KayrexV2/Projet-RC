"""
QA simple pour datapacks/resource packs Minecraft.

Usage :
    python scripts/check_datapack.py .
    python scripts/check_datapack.py C:\chemin\vers\projet

Ce script vérifie :
- JSON strict ;
- clés JSON dupliquées ;
- anciens composants texte stringifiés courants ;
- champ Particle sur area_effect_cloud ;
- anciens noms de dossiers datapack fréquents.

Il ne remplace pas un test in-game.
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Any

OLD_DATAPACK_DIRS = {
    "functions": "function",
    "advancements": "advancement",
    "predicates": "predicate",
    "loot_tables": "loot_table",
    "recipes": "recipe",
    "item_modifiers": "item_modifier",
}

MCFUNCTION_PATTERNS = [
    (
        re.compile(r"minecraft:custom_name\"?\s*:\s*'?\s*\"?\{\\?\"text\\?\":", re.IGNORECASE),
        "Possibilité d'ancien Text Component stringifié dans minecraft:custom_name.",
    ),
    (
        re.compile(r"CustomName\s*:\s*'\s*\{\s*\"text\"\s*:", re.IGNORECASE),
        "Ancien Text Component stringifié dans CustomName. En 1.21.5+, préférer CustomName:{text:\"...\"}.",
    ),
    (
        re.compile(r"\bParticle\s*:", re.IGNORECASE),
        "Champ Particle détecté. Vérifier si un area_effect_cloud doit utiliser custom_particle en version récente.",
    ),
]

def no_duplicate_object_pairs_hook(pairs: list[tuple[str, Any]]) -> dict[str, Any]:
    obj: dict[str, Any] = {}
    seen: set[str] = set()
    dupes: list[str] = []
    for key, value in pairs:
        if key in seen:
            dupes.append(key)
        seen.add(key)
        obj[key] = value
    if dupes:
        raise ValueError(f"Clés JSON dupliquées : {', '.join(sorted(set(dupes)))}")
    return obj

def check_json(path: Path) -> list[str]:
    errors = []
    try:
        text = path.read_text(encoding="utf-8-sig")
        json.loads(text, object_pairs_hook=no_duplicate_object_pairs_hook)
    except Exception as exc:
        errors.append(f"{path}: JSON invalide ou non strict — {exc}")
    return errors

def check_mcfunction(path: Path) -> list[str]:
    warnings = []
    try:
        text = path.read_text(encoding="utf-8")
    except UnicodeDecodeError as exc:
        return [f"{path}: lecture UTF-8 impossible — {exc}"]

    for index, line in enumerate(text.splitlines(), start=1):
        stripped = line.strip()
        if not stripped or stripped.startswith("#"):
            continue
        for pattern, message in MCFUNCTION_PATTERNS:
            if pattern.search(line):
                warnings.append(f"{path}:{index}: {message}\n    {stripped}")
    return warnings

def check_old_dirs(root: Path) -> list[str]:
    warnings = []
    data_dir = root / "data"
    if not data_dir.exists():
        return warnings

    for namespace in data_dir.iterdir():
        if not namespace.is_dir():
            continue
        for old, new in OLD_DATAPACK_DIRS.items():
            old_path = namespace / old
            if old_path.exists():
                warnings.append(f"{old_path}: ancien nom de dossier possible. Vérifier migration vers `{new}`.")
    return warnings

def main() -> int:
    root = Path(sys.argv[1] if len(sys.argv) > 1 else ".").resolve()
    errors: list[str] = []
    warnings: list[str] = []

    if not root.exists():
        print(f"Chemin introuvable : {root}", file=sys.stderr)
        return 2

    for path in root.rglob("*.json"):
        errors.extend(check_json(path))

    for path in root.rglob("*.mcfunction"):
        warnings.extend(check_mcfunction(path))

    warnings.extend(check_old_dirs(root))

    print("# QA datapack/resource pack")
    print(f"Projet : {root}")
    print()

    print("## Erreurs bloquantes")
    if errors:
        for item in errors:
            print(f"- {item}")
    else:
        print("- Aucune erreur JSON stricte détectée par ce script.")

    print()
    print("## Avertissements")
    if warnings:
        for item in warnings:
            print(f"- {item}")
    else:
        print("- Aucun avertissement détecté par ce script.")

    print()
    print("## Note")
    print("Ce script est volontairement prudent. Il signale des patterns à vérifier, mais ne valide pas la syntaxe Minecraft complète.")
    return 1 if errors else 0

if __name__ == "__main__":
    raise SystemExit(main())
