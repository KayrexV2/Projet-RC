execute as @a[predicate=utilitaire:inspec_arme/observation_arme] if data entity @s SelectedItem run function utilitaire:observation_arme
execute as @a[predicate=utilitaire:inspec_arme/observation_arme_endereye] if data entity @s SelectedItem run function utilitaire:observation_arme


schedule function utilitaire:boucle/boucle_3_tick 3t