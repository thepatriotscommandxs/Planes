#yak
#actionbar
title @s actionbar [{"text":"  Altitude | ","color":"yellow","bold":true},{"score":{"name":"*","objective":"altitude"},"color":"gray"},{"text":" blocks","color":"gray"},{"text":" | 64 blocks sea level","color":"gray"},{"text":"  Fuel | ","color":"red","bold":true},{"score":{"name":"*","objective":"yak_fuel"},"color":"gray"},{"text":"  Ammo | ","color":"white","bold":true},{"score":{"name":"*","objective":"yak_ammo"},"color":"gray"},{"text":"  Durability | ","color":"green","bold":true},{"score":{"name":"*","objective":"yak_dur"},"color":"gray"}]]
execute as @s at @s store result score @s yak_fuel run scoreboard players get @e[type=armor_stand,tag=yak_stand,limit=1,sort=nearest] yak_fuel
execute as @s at @s store result score @s yak_ammo run scoreboard players get @e[type=armor_stand,tag=yak_stand,limit=1,sort=nearest] yak_ammo
execute as @s at @s store result score @s yak_dur run scoreboard players get @e[type=armor_stand,tag=yak_stand,limit=1,sort=nearest] yak_dur
