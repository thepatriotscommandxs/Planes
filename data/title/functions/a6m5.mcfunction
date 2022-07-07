#a6m5
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"a6m5_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"a6m5_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"a6m5_dur"},"color":"gray"}]]
execute as @s at @s store result score @s a6m5_fuel run scoreboard players get @e[type=armor_stand,tag=a6m5_stand,limit=1,sort=nearest] a6m5_fuel
execute as @s at @s store result score @s a6m5_ammo run scoreboard players get @e[type=armor_stand,tag=a6m5_stand,limit=1,sort=nearest] a6m5_ammo
execute as @s at @s store result score @s a6m5_dur run scoreboard players get @e[type=armor_stand,tag=a6m5_stand,limit=1,sort=nearest] a6m5_dur
