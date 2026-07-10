# annimation dbt
execute as @e[type=item_display,tag=bouclier_it,tag=!dbtbeaubp,tag=!finbpbeau] run data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:{translation:[0.1f,1.5f,1.0f],left_rotation:[0f,0f,0f,1f],scale:[3.8f,3.8f,3.8f],right_rotation:[0f,0f,0f,1f]}}
# animation rotation
#execute as @e[type=item_display,tag=bouclier_it,tag=!dbtbeaubp,tag=!finbpbeau] run schedule function pouvoir:soutiens/rotation 5t

tag @e[type=item_display,tag=bouclier_it] add dbtbeaubp


# kill fin
kill @e[type=item_display,tag=bouclier_it,tag=!finbpbeau,tag=!antikillfinbp,tag=killbpbeau]

# annimation fin
execute as @e[type=item_display,tag=bouclier_it,tag=dbtbeaubp,tag=!finbpbeau,tag=!antikillfinbp] run data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:{translation:[0f,-0.2f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.1f,0.1f,0.1f],right_rotation:[0f,0f,0f,1f]}}
execute as @e[type=item_display,tag=bouclier_it,tag=dbtbeaubp,tag=!finbpbeau,tag=!antikillfinbp] run tag @s add killbpbeau
execute as @e[type=item_display,tag=bouclier_it,tag=dbtbeaubp,tag=!finbpbeau,tag=!antikillfinbp,tag=killbpbeau] run schedule function pouvoir:soutiens/onde_de_choque_beau 5t

