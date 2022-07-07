execute as @e[type=armor_stand,tag=plane,limit=1,sort=nearest] if score @s rot_x < @p rot_x run scoreboard players operation @s rot_x += @s turn_rate
execute as @e[type=armor_stand,tag=plane,limit=1,sort=nearest] unless score @s rot_x < @p rot_x run scoreboard players operation @s rot_x -= @s turn_rate
