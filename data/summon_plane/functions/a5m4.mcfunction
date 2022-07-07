summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["a5m4_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["a5m4_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1019}}]}
scoreboard players add @e[type=armor_stand,tag=a5m4_stand,limit=1,sort=nearest] a5m4_dur 200
kill @s
scoreboard players add @e[type=armor_stand,tag=a5m4_stand] a5m4_fuel 0
