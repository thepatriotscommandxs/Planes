#p38
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"p38_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"p38_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"p38_dur"},"color":"gray"}]]
execute as @s at @s store result score @s p38_fuel run scoreboard players get @e[type=armor_stand,tag=p38_stand,limit=1,sort=nearest] p38_fuel
execute as @s at @s store result score @s p38_ammo run scoreboard players get @e[type=armor_stand,tag=p38_stand,limit=1,sort=nearest] p38_ammo
execute as @s at @s store result score @s p38_dur run scoreboard players get @e[type=armor_stand,tag=p38_stand,limit=1,sort=nearest] p38_dur
