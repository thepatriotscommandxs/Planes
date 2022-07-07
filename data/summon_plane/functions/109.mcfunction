summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["109_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["109_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1005}}]}
scoreboard players add @e[type=armor_stand,tag=109_stand,limit=1,sort=nearest] 109_dur 300
kill @s
scoreboard players add @e[type=armor_stand,tag=109_stand] 109_fuel 0
