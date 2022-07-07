summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["zero_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["zero_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1004}}]}
scoreboard players add @e[type=armor_stand,tag=zero_stand,limit=1,sort=nearest] zero_dur 200
kill @s
scoreboard players add @e[type=armor_stand,tag=zero_stand] zero_fuel 0
