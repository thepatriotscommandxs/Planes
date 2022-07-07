summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["fw190_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["fw190_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1005}}]}
scoreboard players add @e[type=armor_stand,tag=fw190_stand,limit=1,sort=nearest] fw190_dur 310
kill @s
scoreboard players add @e[type=armor_stand,tag=fw190_stand] fw190_fuel 0
