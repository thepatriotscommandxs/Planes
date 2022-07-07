#f6f
#Rotation
scoreboard players set @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..2] turn_rate 1
function rotation:main

execute as @e[type=armor_stand,tag=f6f_model] at @s run execute store result entity @s Rotation[0] float 1 run data get entity @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..2] Rotation[0] 1
execute as @e[type=armor_stand,tag=f6f_stand] at @s run execute store result entity @s Rotation[1] float 1 run data get entity @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..2] Rotation[1] 1

#engine toggle
execute as @s at @s if entity @s[scores={cycle=0,click=1}] run scoreboard players add @s engine_toggle_13 1
#fly
execute as @s[scores={engine_toggle_13=1,speed_toggle=0}] at @s run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s run tp @s ^ ^ ^1.2
execute as @s[scores={engine_toggle_13=1,speed_toggle=1}] at @s run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s run tp @s ^ ^ ^0.5
execute as @s[scores={engine_toggle_13=1,speed_toggle=2}] at @s run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s run tp @s ^ ^ ^0.21

execute as @s[scores={dropped=1..}] at @s if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:13b}}}] run function control_panel:speed_f6f

execute as @s[scores={engine_toggle_13=0}] at @s run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s run tp @s ^ ^ ^ ~ 0
execute as @s at @s unless entity @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4,scores={f6ftakeoff=100}] run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s if block ~ ~-0.1 ~ #du:non-solid run tp @s ^ ^-0.1 ^ ~ 0


execute as @s[scores={engine_toggle_13=1}] at @s run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..2] at @s unless block ~ ~-1 ~ air unless block ~ ~-2 ~ air unless block ~ ~-3 ~ air unless block ~ ~-4 ~ air unless block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:iron_axe{CustomModelData:1013} 1
execute as @s[scores={engine_toggle_13=1}] at @s run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..2,scores={rot_y=-16..16}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:stone_axe{CustomModelData:1013} 1
execute as @s[scores={engine_toggle_13=1}] at @s run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..2,scores={rot_y=-90..-17}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:diamond_axe{CustomModelData:1013} 1
execute as @s[scores={engine_toggle_13=1}] at @s run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..2,scores={rot_y=17..90}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run item replace entity @s weapon.offhand with minecraft:netherite_axe{CustomModelData:1013} 1

execute as @s at @s unless entity @s[scores={engine_toggle_13=1}] run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..2] at @s run item replace entity @s weapon.offhand with minecraft:golden_axe{CustomModelData:1013} 1
stopsound @a * item.armor.equip_generic

#guns
execute as @s at @s if entity @s[scores={f6f_ammo=1..,cycle=1..2,click=1}] run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s run function gun:f6f_gun


#runway
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:13b}}}] unless entity @s[scores={cycle=2}] run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] store result entity @s Rotation[0] float 1 run scoreboard players get @s rot_x



execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:13b}}}] unless entity @s[scores={cycle=2}] if entity @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4,scores={f6ftakeoff=100}] unless entity @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4,scores={rot_y=-90..-18}] run execute store result entity @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] Rotation[1] float 1 run data get entity @s Rotation[1] 1

#takeoff/landing
execute as @s[scores={engine_toggle_13=1,speed_toggle=0}] at @s run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s unless entity @s[scores={f6ftakeoff=100}] unless block ~ ~-0.1 ~ #du:non-solid run scoreboard players add @s f6ftakeoff 1
execute as @s[scores={engine_toggle_13=0}] at @s run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s unless entity @s[scores={f6ftakeoff=..0}] unless block ~ ~-0.1 ~ #du:non-solid run scoreboard players remove @s f6ftakeoff 1
execute as @s[scores={engine_toggle_13=0}] at @s run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s unless entity @s[scores={f6ftakeoff=..0}] run tp @s ^ ^ ^0.38

execute as @s[scores={engine_toggle_13=0}] at @s run execute as @e[scores={f6ftakeoff=99},type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] run playsound minecraft:plane.skrrt master @a[distance=..10] ~ ~ ~

#crashlanding
execute as @s at @s run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s unless block ~ ~ ~ #du:non-solid run function planes:crash

#sounds
#fly
execute as @s at @s if entity @s[scores={engine_toggle_13=1}] run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s run scoreboard players add @s f6fflysound 1
execute as @s at @s if entity @s[scores={engine_toggle_13=1}] run execute as @e[scores={f6fflysound=0..2},type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s run playsound minecraft:plane.fly player @a[distance=..40]
#in
execute as @s at @s unless entity @s[scores={engine_toggle_13=1}] if entity @e[type=minecart,tag=f6f_seat,distance=..0.4] run execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s run scoreboard players add @s f6finsound 1
execute as @s at @s unless entity @s[scores={engine_toggle_13=1}] if entity @e[type=minecart,tag=f6f_seat,distance=..0.4] run execute as @e[scores={f6finsound=0..2},type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s run playsound minecraft:plane.in player @a[distance=..40]

#fuel
execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s if entity @s[scores={planefuel=0}] unless entity @s[scores={f6f_fuel=0}] run scoreboard players remove @s f6f_fuel 1

#Bomb
execute as @s at @s if entity @s[scores={cycle=3,click=1}] run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s if entity @s[nbt={HandItems:[{id:"minecraft:green_terracotta",Count:1b,tag:{CustomModelData:1001}},{}]}] unless entity @s[scores={rot_y=80..90}] run function gun:bomb
execute as @s at @s if entity @s[scores={cycle=3,click=1}] run execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s if entity @s[nbt={HandItems:[{id:"minecraft:green_terracotta",Count:1b,tag:{CustomModelData:1001}},{}]}] if entity @s[scores={rot_y=80..90}] run function gun:bombdive

#climb
#rot_y
execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s run execute store result score @s rot_y run data get entity @s Rotation[1]
execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s if entity @s[scores={rot_y=-90..-21}] run tp @s ~ ~ ~ ~ -20

execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s if entity @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4,scores={f6ftakeoff=99}] run tp @s ~ ~ ~ ~ ~-5

#Collison
execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s if entity @e[tag=plane,distance=1..5,type=armor_stand,nbt={ShowArms:1b,Invisible:1b}] run execute as @e[distance=..5,type=armor_stand,nbt={ShowArms:1b,Invisible:1b}] at @s run function planes:crash

#max altitude
execute as @e[type=armor_stand,tag=f6f_model,limit=1,sort=nearest,distance=..4] at @s if entity @p[scores={altitude=388..}] run tp @s ~ ~ ~ ~ 1

#sound score restart
execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s if score @s f6fflysound matches 20.. run scoreboard players set @s f6fflysound 1
execute as @e[type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] at @s if score @s f6finsound matches 20.. run scoreboard players set @s f6finsound 1
