#Store rotation
execute as @e[type=armor_stand,tag=plane,limit=1,sort=nearest] store result score @s rot_x run data get entity @s Rotation[0]
execute as @e[type=armor_stand,tag=plane,limit=1,sort=nearest] if score @s rot_x matches ..0 run scoreboard players operation @s rot_x += rot_360 rot_diff

#Get rot_diff
scoreboard players operation @s rot_diff = @e[type=armor_stand,tag=plane,limit=1,sort=nearest] rot_x
scoreboard players operation @s rot_diff -= @s rot_x
execute if score @s rot_diff matches ..0 run scoreboard players operation @s rot_diff *= rot_neg1 rot_diff

#Compare
execute if score @s rot_diff matches ..179 run function rotation:_under_180
execute unless score @s rot_diff matches ..179 run function rotation:_over_180
# for stand: x_rot =((x_rot % 360) + 360) % 360
scoreboard players operation @e[type=armor_stand,tag=plane,limit=1,sort=nearest] rot_x %= rot_360 rot_diff
scoreboard players operation @e[type=armor_stand,tag=plane,limit=1,sort=nearest] rot_x += rot_360 rot_diff
scoreboard players operation @e[type=armor_stand,tag=plane,limit=1,sort=nearest] rot_x %= rot_360 rot_diff
