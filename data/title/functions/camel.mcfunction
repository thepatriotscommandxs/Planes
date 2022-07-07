#camel
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"camel_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"camel_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"camel_dur"},"color":"gray"}]]
execute as @s at @s store result score @s camel_fuel run scoreboard players get @e[type=armor_stand,tag=camel_stand,limit=1,sort=nearest] camel_fuel
execute as @s at @s store result score @s camel_ammo run scoreboard players get @e[type=armor_stand,tag=camel_stand,limit=1,sort=nearest] camel_ammo
execute as @s at @s store result score @s camel_dur run scoreboard players get @e[type=armor_stand,tag=camel_stand,limit=1,sort=nearest] camel_dur
