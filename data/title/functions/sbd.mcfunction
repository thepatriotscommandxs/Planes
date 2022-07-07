#sbd
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"sbd_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"sbd_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"sbd_dur"},"color":"gray"}]]
execute as @s at @s store result score @s sbd_fuel run scoreboard players get @e[type=armor_stand,tag=sbd_stand,limit=1,sort=nearest] sbd_fuel
execute as @s at @s store result score @s sbd_ammo run scoreboard players get @e[type=armor_stand,tag=sbd_stand,limit=1,sort=nearest] sbd_ammo
execute as @s at @s store result score @s sbd_dur run scoreboard players get @e[type=armor_stand,tag=sbd_stand,limit=1,sort=nearest] sbd_dur
