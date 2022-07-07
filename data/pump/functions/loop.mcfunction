#fuel
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score Online playerlist <= 1 1 run execute as @e[type=armor_stand,tag=pump] at @s run function pump:pump
execute as @a[limit=1,sort=nearest] at @s as @e[type=minecraft:item,nbt={Item:{tag:{CustomModelData:1001}}},limit=1,distance=50..] run kill @s


execute at @e[scores={fueldispensed=2000..}] as @e[scores={fueldispensed=2000..}] run setblock ~ ~ ~ air
scoreboard players add @e[type=armor_stand,tag=pump] fueltimer 1
execute as @e[type=armor_stand,tag=pump] at @s if score @s fueltimer matches 200.. run scoreboard players set @s fueltimer 0
scoreboard players add @e[type=armor_stand,tag=pump,scores={fueltimer=199}] fueldispensed 1
