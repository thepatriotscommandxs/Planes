#f6f
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"f6f_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"f6f_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"f6f_dur"},"color":"gray"}]]
execute as @s at @s store result score @s f6f_fuel run scoreboard players get @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest] f6f_fuel
execute as @s at @s store result score @s f6f_ammo run scoreboard players get @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest] f6f_ammo
execute as @s at @s store result score @s f6f_dur run scoreboard players get @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest] f6f_dur
