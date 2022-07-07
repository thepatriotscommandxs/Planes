summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["a6m5_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["a6m5_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1008}}]}
scoreboard players add @e[type=armor_stand,tag=a6m5_stand,limit=1,sort=nearest] a6m5_dur 200
kill @s
scoreboard players add @e[type=armor_stand,tag=a6m5_stand] a6m5_fuel 0
