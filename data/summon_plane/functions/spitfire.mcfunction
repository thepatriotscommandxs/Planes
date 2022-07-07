summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["spitfire_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["spitfire_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1002}}]}
scoreboard players add @e[type=armor_stand,tag=spitfire_stand,limit=1,sort=nearest] spitfire_dur 280
kill @s
scoreboard players add @e[type=armor_stand,tag=spitfire_stand] spitfire_fuel 0
