scoreboard players add @a[scores={af=50..}] af 1

tag @a[scores={af=70..},tag=af_cd] remove af_cd
scoreboard players set @a[scores={af=70..}] af 0

execute as @a[scores={af=50..}] run schedule function weapons:arcflame/af_cd 1t