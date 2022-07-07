#mig
#Rotation
scoreboard players set @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] turn_rate 2
function rotation:main

#engine toggle
execute as @s at @s if entity @s[scores={cycle=0,click=1..}] run scoreboard players add @s engine_toggle_11 1
#fly
execute as @s[scores={engine_toggle_11=1,speed_toggle=0}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s run tp @s ^ ^ ^1.45
execute as @s[scores={engine_toggle_11=1,speed_toggle=1}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s run tp @s ^ ^ ^0.7
execute as @s[scores={engine_toggle_11=1,speed_toggle=2}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s run tp @s ^ ^ ^0.35

execute as @s[scores={dropped=1..}] at @s if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:11b}}}] run function control_panel:speed_mig

execute as @s[scores={engine_toggle_11=0}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s run tp @s ^ ^ ^ ~ 0
execute as @s at @s unless entity @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2,scores={migtakeoff=150}] run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s if block ~ ~-0.1 ~ #du:non-solid run tp @s ^ ^-0.1 ^ ~ 0


execute as @s[scores={engine_toggle_11=1}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s unless block ~ ~-1 ~ air unless block ~ ~-2 ~ air unless block ~ ~-3 ~ air unless block ~ ~-4 ~ air unless block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:iron_nugget{CustomModelData:1012} 1
execute as @s[scores={engine_toggle_11=1}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2,scores={rot_y=-10..10}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:stone_axe{CustomModelData:1011} 1
execute as @s[scores={engine_toggle_11=1}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2,scores={rot_y=-90..-11}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:diamond_axe{CustomModelData:1011} 1
execute as @s[scores={engine_toggle_11=1}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2,scores={rot_y=11..90}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:netherite_axe{CustomModelData:1011} 1
execute as @s at @s unless entity @s[scores={engine_toggle_11=1}] run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s run item replace entity @s weapon.offhand with minecraft:iron_nugget{CustomModelData:1012} 1
stopsound @a * item.armor.equip_generic

#guns
execute as @s at @s if entity @s[scores={mig_ammo=1..,cycle=1..2,click=1..}] run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s run function gun:mig_gun


#runway
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:11b}}}] unless entity @s[scores={cycle=2}] run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @s rot_x



execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:11b}}}] unless entity @s[scores={cycle=2}] if entity @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2,scores={migtakeoff=150}] unless entity @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2,scores={rot_y=-90..-12}] run execute store result entity @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] Rotation[1] float 1 run data get entity @s Rotation[1] 1

#takeoff/landing
execute as @s[scores={engine_toggle_11=1,speed_toggle=0}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s unless entity @s[scores={migtakeoff=150}] unless block ~ ~-0.1 ~ #du:non-solid run scoreboard players add @s migtakeoff 1
execute as @s[scores={engine_toggle_11=0}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s unless entity @s[scores={migtakeoff=..0}] unless block ~ ~-0.1 ~ #du:non-solid run scoreboard players remove @s migtakeoff 1
execute as @s[scores={engine_toggle_11=0}] at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s unless entity @s[scores={migtakeoff=..0}] run tp @s ^ ^ ^0.38

execute as @s[scores={engine_toggle_11=0}] at @s run execute as @e[scores={migtakeoff=149},type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] run playsound minecraft:plane.skrrt master @a[distance=..10] ~ ~ ~

#crashlanding
execute as @s at @s run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s unless block ~ ~ ~ #du:non-solid run function planes:crash

#sounds
#fly
execute as @s at @s if entity @s[scores={engine_toggle_11=1}] run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s run playsound entity.cat.hiss master @a[distance=..30] ^ ^ ^-15 100 0 1

#fuel
execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s if entity @s[scores={planefuel=0}] unless entity @s[scores={mig_fuel=0}] run scoreboard players remove @s mig_fuel 1

#Bomb
execute as @s at @s if entity @s[scores={cycle=3,click=1..}] run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s if entity @s[nbt={HandItems:[{id:"minecraft:green_terracotta",Count:1b,tag:{CustomModelData:1001}},{}]}] unless entity @s[scores={rot_y=80..90}] run function gun:bomb
execute as @s at @s if entity @s[scores={cycle=3,click=1..}] run execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s if entity @s[nbt={HandItems:[{id:"minecraft:green_terracotta",Count:1b,tag:{CustomModelData:1001}},{}]}] if entity @s[scores={rot_y=80..90}] run function gun:bombdive

#climb
#rot_y
execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s run execute store result score @s rot_y run data get entity @s Rotation[1]
execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s if entity @s[scores={rot_y=-90..-12}] run tp @s ~ ~ ~ ~ -11

#Collison
execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s if entity @e[tag=plane,distance=1..4,type=armor_stand,nbt={ShowArms:1b,Invisible:1b}] run execute as @e[distance=..4,type=armor_stand,nbt={ShowArms:1b,Invisible:1b}] at @s run function planes:crash

#max altitude
execute as @e[type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] at @s if entity @p[scores={altitude=456..}] run tp @s ~ ~ ~ ~ 1
