summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["yak_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["yak_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1016}}]}
scoreboard players add @e[type=armor_stand,tag=yak_stand,limit=1,sort=nearest] yak_dur 300
kill @s
scoreboard players add @e[type=armor_stand,tag=yak_stand] yak_fuel 0
