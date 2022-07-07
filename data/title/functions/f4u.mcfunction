#f4u
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"f4u_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"f4u_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"f4u_dur"},"color":"gray"}]]
execute as @s at @s store result score @s f4u_fuel run scoreboard players get @e[type=armor_stand,tag=f4u_stand,limit=1,sort=nearest] f4u_fuel
execute as @s at @s store result score @s f4u_ammo run scoreboard players get @e[type=armor_stand,tag=f4u_stand,limit=1,sort=nearest] f4u_ammo
execute as @s at @s store result score @s f4u_dur run scoreboard players get @e[type=armor_stand,tag=f4u_stand,limit=1,sort=nearest] f4u_dur
