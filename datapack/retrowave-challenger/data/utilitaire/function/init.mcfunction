scoreboard objectives add Monstre_aneantie minecraft.custom:minecraft.mob_kills
scoreboard players set @a Monstre_aneantie 0

scoreboard objectives add kd minecraft.custom:minecraft.mob_kills
scoreboard players set @a kd 0

scoreboard objectives add ramdom dummy

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

scoreboard objectives add stat-admin-player1 dummy
scoreboard objectives add stat-admin-player2 dummy
scoreboard objectives add stat-admin-player3 dummy
scoreboard objectives add stat-admin-player4 dummy

scoreboard objectives add stat-kill-player1 dummy
scoreboard objectives add stat-kill-player2 dummy
scoreboard objectives add stat-kill-player3 dummy
scoreboard objectives add stat-kill-player4 dummy

scoreboard objectives add SelectedItemSlot dummy
scoreboard objectives add SelectedItemSlot2 dummy
scoreboard players set @a SelectedItemSlot 0
scoreboard players set @a SelectedItemSlot2 0

#team add player1 "player1"
#team add player2 "player2" 
#team add player3 "player3" 
#team add player4 "player4" 

scoreboard players set @a mg 0
scoreboard players set @a dvcd 0
scoreboard players set @a DVuse 0
scoreboard players set @a rc 0
scoreboard players set @a pkcd 0


function utilitaire:load