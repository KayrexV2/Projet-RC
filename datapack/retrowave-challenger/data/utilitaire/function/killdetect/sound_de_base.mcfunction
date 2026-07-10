playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 100 1
playsound block.grass.break ambient @s ~ ~ ~ 100 1.9


#scoreboard players set @s[scores={kd=1}] kd 0
#scoreboard players remove @s[scores={kd=2..9}] kd 2
#scoreboard players set @s[scores={kd=10..}] kd 0