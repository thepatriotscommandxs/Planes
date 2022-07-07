summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["mig_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["mig_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1012}}]}
scoreboard players add @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest] mig_dur 200
kill @s
scoreboard players add @e[type=armor_stand,tag=mig_stand] mig_fuel 0
