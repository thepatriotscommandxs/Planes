summon minecraft:armor_stand ~ ~ ~ {Glowing:0b,ShowArms:1b,Invisible:1b,Tags:["sbd_stand","plane"],Pose:{LeftArm:[345f,360f,360f],RightArm:[345f,360f,360f]},DisabledSlots:4079166,Passengers:[{id:"minecraft:minecart",Invulnerable:0b,Tags:["sbd_seat"]}],HandItems:[{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:1015}}]}
scoreboard players add @e[type=armor_stand,tag=sbd_stand,limit=1,sort=nearest] sbd_dur 350
scoreboard players add @e[type=armor_stand,tag=sbd_stand] sbd_fuel 0
summon minecraft:minecart ~ ~ ~ {Invulnerable:0b,Tags:["sbd_gunner"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:0b,ShowArms:1b,Invisible:1b,Tags:["sbd_gun","machine_gun"],DisabledSlots:4079166,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1008}}]}
kill @s
