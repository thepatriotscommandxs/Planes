summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["f6f_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4144959,Passengers:[{id:"minecraft:armor_stand",Invulnerable:0b,Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["f6f_model"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["f6f_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1014}}]}]}
scoreboard players add @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest] f6f_dur 320
kill @s
scoreboard players add @e[type=armor_stand,tag=f6f_stand] f6f_fuel 0
