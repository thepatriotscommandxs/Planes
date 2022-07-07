summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["p38_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["p38_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1013}}]}
scoreboard players add @e[type=armor_stand,tag=p38_stand,limit=1,sort=nearest] p38_dur 320
kill @s
scoreboard players add @e[type=armor_stand,tag=p38_stand] p38_fuel 0
