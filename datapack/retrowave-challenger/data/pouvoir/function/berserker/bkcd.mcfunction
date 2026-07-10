scoreboard players add @a[scores={bk=1..},tag=bkcd] bk 1
execute as @a[scores={bk=6},tag=bkcd,tag=!bkulti] run tag @s remove bkcd
scoreboard players set @a[scores={bk=6},tag=!bkulti] bk 0

execute as @a[scores={bk=2},tag=bkcd,tag=bkulti] run tag @s remove bkcd
scoreboard players set @a[scores={bk=2},tag=bkulti] bk 0


execute as @a[scores={bk=1..},tag=bkcd] run schedule function pouvoir:berserker/bkcd 5t