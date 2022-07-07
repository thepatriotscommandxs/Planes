#fw190
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"fw190_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"fw190_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"fw190_dur"},"color":"gray"}]]
execute as @s at @s store result score @s fw190_fuel run scoreboard players get @e[type=armor_stand,tag=fw190_stand,limit=1,sort=nearest] fw190_fuel
execute as @s at @s store result score @s fw190_ammo run scoreboard players get @e[type=armor_stand,tag=fw190_stand,limit=1,sort=nearest] fw190_ammo
execute as @s at @s store result score @s fw190_dur run scoreboard players get @e[type=armor_stand,tag=fw190_stand,limit=1,sort=nearest] fw190_dur
