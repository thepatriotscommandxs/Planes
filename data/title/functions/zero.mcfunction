#zero
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"zero_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"zero_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"zero_dur"},"color":"gray"}]]
execute as @s at @s store result score @s zero_fuel run scoreboard players get @e[type=armor_stand,tag=zero_stand,limit=1,sort=nearest] zero_fuel
execute as @s at @s store result score @s zero_ammo run scoreboard players get @e[type=armor_stand,tag=zero_stand,limit=1,sort=nearest] zero_ammo
execute as @s at @s store result score @s zero_dur run scoreboard players get @e[type=armor_stand,tag=zero_stand,limit=1,sort=nearest] zero_dur
