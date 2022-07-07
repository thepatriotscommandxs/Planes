summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["camel_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["camel_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1009}}]}
scoreboard players add @e[type=armor_stand,tag=camel_stand,limit=1,sort=nearest] camel_dur 100
kill @s
scoreboard players add @e[type=armor_stand,tag=camel_stand] camel_fuel 0
