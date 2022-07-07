summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["mustang_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["mustang_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1003}}]}
scoreboard players add @e[type=armor_stand,tag=mustang_stand,limit=1,sort=nearest] mustang_dur 300
kill @s
scoreboard players add @e[type=armor_stand,tag=mustang_stand] mustang_fuel 0
