
execute as @a[scores={ae=1..,mana=18..}] at @s run tag @e[type=arrow,distance=2..3,tag=!arrowplayer,nbt=!{inGround:1b}] add killArrow



# effect
execute as @e[type=arrow,tag=killArrow,tag=!aetrack,nbt=!{inGround:1b}] run scoreboard players remove @a[sort=nearest,scores={ae=1..}] mana 18

execute at @e[type=arrow,tag=killArrow,tag=!aetrack] run playsound entity.player.hurt_freeze ambient @a[distance=..10] ~ ~ ~ 1 2.0 1
execute at @e[type=arrow,tag=killArrow,tag=!aetrack] run particle dust{color:[0.008,0.886,1.0],scale:1} ~ ~ ~ 0 0 0 1 5 force

kill @e[type=arrow,tag=killArrow,tag=!aetrack]
 

#schedule function weapons:arcelite/ae_protect 1t