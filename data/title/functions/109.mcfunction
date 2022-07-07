#109
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"109_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"109_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"109_dur"},"color":"gray"}]]
execute as @s at @s store result score @s 109_fuel run scoreboard players get @e[type=armor_stand,tag=109_stand,limit=1,sort=nearest] 109_fuel
execute as @s at @s store result score @s 109_ammo run scoreboard players get @e[type=armor_stand,tag=109_stand,limit=1,sort=nearest] 109_ammo
execute as @s at @s store result score @s 109_dur run scoreboard players get @e[type=armor_stand,tag=109_stand,limit=1,sort=nearest] 109_dur
