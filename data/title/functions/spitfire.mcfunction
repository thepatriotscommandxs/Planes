#spitfire
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"spitfire_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"spitfire_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"spitfire_dur"},"color":"gray"}]]
execute as @s at @s store result score @s spitfire_fuel run scoreboard players get @e[type=armor_stand,tag=spitfire_stand,limit=1,sort=nearest] spitfire_fuel
execute as @s at @s store result score @s spitfire_ammo run scoreboard players get @e[type=armor_stand,tag=spitfire_stand,limit=1,sort=nearest] spitfire_ammo
execute as @s at @s store result score @s spitfire_dur run scoreboard players get @e[type=armor_stand,tag=spitfire_stand,limit=1,sort=nearest] spitfire_dur
