execute as @s at @s if entity @s[type=armor_stand,tag=machine_gun,nbt={HandItems:[{id:"minecraft:gold_nugget",Count:1b,tag:{display:{Name:'{"text":"Bullet","italic":false}'},CustomModelData:1005}},{}]}] run function gun:machine_gun
execute as @s at @s run execute store result entity @e[type=armor_stand,tag=machine_gun,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @p[distance=..1] Rotation[0] 1
execute as @s at @s unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1008}}]}] run give @p minecraft:bat_spawn_egg{display:{Name:'{"text":"Machine Gun","italic":false}'},CustomModelData:1003,EntityTag:{id:"minecraft:armor_stand",ShowArms:1b,Invisible:1b,Tags:["machine_gun"],DisabledSlots:3813166,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1008}}]}} 1
execute as @s at @s unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1008}}]}] run kill @s

scoreboard players add @s spread 1
