#fokker
#Rotation
scoreboard players set @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] turn_rate 5
function rotation:main

#engine toggle
execute as @s at @s if entity @s[scores={cycle=0,click=1..}] run scoreboard players add @s engine_toggle_9 1
#fly
execute as @s[scores={engine_toggle_9=1,speed_toggle=0}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run tp @s ^ ^ ^0.99
execute as @s[scores={engine_toggle_9=1,speed_toggle=1}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run tp @s ^ ^ ^0.4
execute as @s[scores={engine_toggle_9=1,speed_toggle=2}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run tp @s ^ ^ ^0.16

execute as @s[scores={dropped=1..}] at @s if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:9b}}}] run function control_panel:speed_fokker

execute as @s[scores={engine_toggle_9=0}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run tp @s ^ ^ ^ ~ 0
execute as @s at @s unless entity @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2,scores={fokkertakeoff=100}] run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s if block ~ ~-0.1 ~ #du:non-solid run tp @s ^ ^-0.1 ^ ~ 0


execute as @s[scores={engine_toggle_9=1}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s unless block ~ ~-1 ~ air unless block ~ ~-2 ~ air unless block ~ ~-3 ~ air unless block ~ ~-4 ~ air unless block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:iron_axe{CustomModelData:1009} 1
execute as @s[scores={engine_toggle_9=1}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2,scores={rot_y=-11..11}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:iron_axe{CustomModelData:1009} 1
execute as @s[scores={engine_toggle_9=1}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2,scores={rot_y=-90..-12}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:diamond_axe{CustomModelData:1009} 1
execute as @s[scores={engine_toggle_9=1}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2,scores={rot_y=12..90}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:netherite_axe{CustomModelData:1009} 1

execute as @s at @s unless entity @s[scores={engine_toggle_9=1}] run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run item replace entity @s weapon.offhand with minecraft:golden_axe{CustomModelData:1009} 1
stopsound @a * item.armor.equip_generic

#guns
execute as @s at @s if entity @s[scores={fokker_ammo=1..,cycle=1..2,click=1..}] run execute as @e[type=minecart,tag=fokker_seat,limit=1,sort=nearest,distance=..2] at @s run function gun:fokker_gun

execute as @s[scores={dropped2=1..}] at @s if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:1b,tag:{display:{Name:'{"text":"Bullet","italic":false}'},CustomModelData:1005}}}] run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] run function ammo:fokker
execute as @s[scores={dropped2=1..}] at @s if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:1b,tag:{display:{Name:'{"text":"Bullet","italic":false}'},CustomModelData:1005}}}] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:1b,tag:{display:{Name:'{"text":"Bullet","italic":false}'},CustomModelData:1005}}}]

#runway
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:9b}}}] unless entity @s[scores={cycle=2}] run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @s rot_x



execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:9b}}}] unless entity @s[scores={cycle=2}] if entity @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2,scores={fokkertakeoff=100}] unless entity @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2,scores={rot_y=-90..-13}] run execute store result entity @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] Rotation[1] float 1 run data get entity @s Rotation[1] 1

#takeoff/landing
execute as @s[scores={engine_toggle_9=1,speed_toggle=0}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s unless entity @s[scores={fokkertakeoff=100}] unless block ~ ~-0.1 ~ #du:non-solid run scoreboard players add @s fokkertakeoff 1
execute as @s[scores={engine_toggle_9=0}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s unless entity @s[scores={fokkertakeoff=..0}] unless block ~ ~-0.1 ~ #du:non-solid run scoreboard players remove @s fokkertakeoff 1
execute as @s[scores={engine_toggle_9=0}] at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s unless entity @s[scores={fokkertakeoff=..0}] run tp @s ^ ^ ^0.29

execute as @s[scores={engine_toggle_9=0}] at @s run execute as @e[scores={fokkertakeoff=99},type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] run playsound minecraft:plane.skrrt master @a[distance=..10] ~ ~ ~

#crashlanding
execute as @s at @s run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s unless block ~ ~ ~ #du:non-solid run function planes:crash

#sounds
#fly
execute as @s at @s if entity @s[scores={engine_toggle_9=1}] run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run scoreboard players add @s fokkerflysound 1
execute as @s at @s if entity @s[scores={engine_toggle_9=1}] run execute as @e[scores={fokkerflysound=0..2},type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run playsound minecraft:plane.fly player @a[distance=..40]
#in
execute as @s at @s unless entity @s[scores={engine_toggle_9=1}] if entity @e[type=minecart,tag=fokker_seat,distance=..0.4] run execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run scoreboard players add @s fokkerinsound 1
execute as @s at @s unless entity @s[scores={engine_toggle_9=1}] if entity @e[type=minecart,tag=fokker_seat,distance=..0.4] run execute as @e[scores={fokkerinsound=0..2},type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run playsound minecraft:plane.in player @a[distance=..40]

#fuel
execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s if entity @s[scores={planefuel=0}] unless entity @s[scores={fokker_fuel=0}] run scoreboard players remove @s fokker_fuel 1

#climb
#rot_y
execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s run execute store result score @s rot_y run data get entity @s Rotation[1]
execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s if entity @s[scores={rot_y=-90..-13}] run tp @s ~ ~ ~ ~ -12

#Collison
execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s if entity @e[tag=plane,distance=1..4,type=armor_stand,nbt={ShowArms:1b,Invisible:1b}] run execute as @e[distance=..4,type=armor_stand,nbt={ShowArms:1b,Invisible:1b}] at @s run function planes:crash

#max altitude
execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s if entity @p[scores={altitude=211..}] run tp @s ~ ~ ~ ~ 1

#sound score restart
execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s if score @s fokkerflysound matches 20.. run scoreboard players set @s fokkerflysound 1
execute as @e[type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] at @s if score @s fokkerinsound matches 20.. run scoreboard players set @s fokkerinsound 1
