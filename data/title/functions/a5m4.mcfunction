#a5m4
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"a5m4_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"a5m4_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"a5m4_dur"},"color":"gray"}]]
execute as @s at @s store result score @s a5m4_fuel run scoreboard players get @e[type=armor_stand,tag=a5m4_stand,limit=1,sort=nearest] a5m4_fuel
execute as @s at @s store result score @s a5m4_ammo run scoreboard players get @e[type=armor_stand,tag=a5m4_stand,limit=1,sort=nearest] a5m4_ammo
execute as @s at @s store result score @s a5m4_dur run scoreboard players get @e[type=armor_stand,tag=a5m4_stand,limit=1,sort=nearest] a5m4_dur
