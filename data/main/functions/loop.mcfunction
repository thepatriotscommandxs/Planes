#rot script
scoreboard players set rot_neg1 rot_diff -1
scoreboard players set rot_360 rot_diff 360

#panel_select
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:1b}}]}] run function control_panel:select_spitfire
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:2b}}]}] run function control_panel:select_mustang
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:3b}}]}] run function control_panel:select_zero
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:4b}}]}] run function control_panel:select_109
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:5b}}]}] run function control_panel:select_f4u
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:6b}}]}] run function control_panel:select_empty
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:7b}}]}] run function control_panel:select_a6m5
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:8b}}]}] run function control_panel:select_camel
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:9b}}]}] run function control_panel:select_fokker
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:10b}}]}] run function control_panel:select_empty
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:11b}}]}] run function control_panel:select_mig
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:12b}}]}] run function control_panel:select_p38
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:13b}}]}] run function control_panel:select_f6f
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:14b}}]}] run function control_panel:select_empty
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:15b}}]}] run function control_panel:select_yak
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:16b}}]}] run function control_panel:select_empty
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:17b}}]}] run function control_panel:select_empty
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:18b}}]}] run function control_panel:select_a5m4
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:19b}}]}] run function control_panel:select_fw190

execute as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:14b}}]}] run function control_panel:select_sbd

#spitfire
execute as @a at @s if entity @e[type=minecart,tag=spitfire_seat,distance=..0.4] run function title:spitfire
execute as @a at @s if entity @e[type=minecart,tag=spitfire_seat,distance=..0.4] if entity @e[scores={spitfire_fuel=1..},type=armor_stand,tag=spitfire_stand,limit=1,sort=nearest,distance=..2] run function planes:spitfire
execute as @a at @s if entity @e[type=minecart,tag=spitfire_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:1b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:1b} 1
execute as @a at @s unless entity @e[type=minecart,tag=spitfire_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:1b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:1b} 1
execute as @a at @s unless entity @e[type=minecart,tag=spitfire_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_1
execute as @a at @s if score @s engine_toggle_1 matches 2.. run scoreboard players set @s engine_toggle_1 0
execute as @e[type=armor_stand,tag=spitfire_stand] at @s run function misc:spitfire
execute as @e[type=minecart,tag=spitfire_seat] at @s run function misc:spitfire
execute as @e[type=armor_stand,tag=spawn_spitfire] at @s run function summon_plane:spitfire


#mustang
execute as @a at @s if entity @e[type=minecart,tag=mustang_seat,distance=..0.4] run function title:mustang
execute as @a at @s if entity @e[type=minecart,tag=mustang_seat,distance=..0.4] if entity @e[scores={mustang_fuel=1..},type=armor_stand,tag=mustang_stand,limit=1,sort=nearest,distance=..2] run function planes:mustang
execute as @a at @s if entity @e[type=minecart,tag=mustang_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:2b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:2b} 1
execute as @a at @s unless entity @e[type=minecart,tag=mustang_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:2b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:2b} 1
execute as @a at @s unless entity @e[type=minecart,tag=mustang_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_2
execute as @a at @s if score @s engine_toggle_2 matches 2.. run scoreboard players set @s engine_toggle_2 0
execute as @e[type=armor_stand,tag=mustang_stand] at @s run function misc:mustang
execute as @e[type=minecart,tag=mustang_seat] at @s run function misc:mustang
execute as @e[type=armor_stand,tag=spawn_mustang] at @s run function summon_plane:mustang

#zero
execute as @a at @s if entity @e[type=minecart,tag=zero_seat,distance=..0.4] run function title:zero
execute as @a at @s if entity @e[type=minecart,tag=zero_seat,distance=..0.4] if entity @e[scores={zero_fuel=1..},type=armor_stand,tag=zero_stand,limit=1,sort=nearest,distance=..2] run function planes:zero
execute as @a at @s if entity @e[type=minecart,tag=zero_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:3b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:3b} 1
execute as @a at @s unless entity @e[type=minecart,tag=zero_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:3b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:3b} 1
execute as @a at @s unless entity @e[type=minecart,tag=zero_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_3
execute as @a at @s if score @s engine_toggle_3 matches 2.. run scoreboard players set @s engine_toggle_3 0
execute as @e[type=armor_stand,tag=zero_stand] at @s run function misc:zero
execute as @e[type=minecart,tag=zero_seat] at @s run function misc:zero
execute as @e[type=armor_stand,tag=spawn_zero] at @s run function summon_plane:zero

#109
execute as @a at @s if entity @e[type=minecart,tag=109_seat,distance=..0.4] run function title:109
execute as @a at @s if entity @e[type=minecart,tag=109_seat,distance=..0.4] if entity @e[scores={109_fuel=1..},type=armor_stand,tag=109_stand,limit=1,sort=nearest,distance=..2] run function planes:109
execute as @a at @s if entity @e[type=minecart,tag=109_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:4b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:4b} 1
execute as @a at @s unless entity @e[type=minecart,tag=109_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:4b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:4b} 1
execute as @a at @s unless entity @e[type=minecart,tag=109_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_4
execute as @a at @s if score @s engine_toggle_4 matches 2.. run scoreboard players set @s engine_toggle_4 0
execute as @e[type=armor_stand,tag=109_stand] at @s run function misc:109
execute as @e[type=minecart,tag=109_seat] at @s run function misc:109
execute as @e[type=armor_stand,tag=spawn_109] at @s run function summon_plane:109

#f4u
execute as @a at @s if entity @e[type=minecart,tag=f4u_seat,distance=..0.4] run function title:f4u
execute as @a at @s if entity @e[type=minecart,tag=f4u_seat,distance=..0.4] if entity @e[scores={f4u_fuel=1..},type=armor_stand,tag=f4u_stand,limit=1,sort=nearest,distance=..4] run function planes:f4u
execute as @a at @s if entity @e[type=minecart,tag=f4u_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:5b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:5b} 1
execute as @a at @s unless entity @e[type=minecart,tag=f4u_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:5b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:5b} 1
execute as @a at @s unless entity @e[type=minecart,tag=f4u_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_5
execute as @a at @s if score @s engine_toggle_5 matches 2.. run scoreboard players set @s engine_toggle_5 0
execute as @e[type=armor_stand,tag=f4u_stand] at @s run function misc:f4u
execute as @e[type=armor_stand,tag=f4u_model] at @s run function misc:f4u
execute as @e[type=minecart,tag=f4u_seat] at @s run function misc:f4u
execute as @e[type=armor_stand,tag=spawn_f4u] at @s run function summon_plane:f4u

#empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] run function title:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @e[scores={empty_fuel=1..},type=armor_stand,tag=empty_stand,limit=1,sort=nearest,distance=..2] run function planes:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:6b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:6b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:6b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:6b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_6
execute as @a at @s if score @s engine_toggle_6 matches 2.. run scoreboard players set @s engine_toggle_6 0
execute as @e[type=armor_stand,tag=empty_stand] at @s run function misc:empty
execute as @e[type=minecart,tag=empty_seat] at @s run function misc:empty
execute as @e[type=armor_stand,tag=spawn_empty] at @s run function summon_plane:empty

#A6M5
execute as @a at @s if entity @e[type=minecart,tag=a6m5_seat,distance=..0.4] run function title:a6m5
execute as @a at @s if entity @e[type=minecart,tag=a6m5_seat,distance=..0.4] if entity @e[scores={a6m5_fuel=1..},type=armor_stand,tag=a6m5_stand,limit=1,sort=nearest,distance=..2] run function planes:a6m5
execute as @a at @s if entity @e[type=minecart,tag=a6m5_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:7b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:7b} 1
execute as @a at @s unless entity @e[type=minecart,tag=a6m5_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:7b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:7b} 1
execute as @a at @s unless entity @e[type=minecart,tag=a6m5_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_7
execute as @a at @s if score @s engine_toggle_7 matches 2.. run scoreboard players set @s engine_toggle_7 0
execute as @e[type=armor_stand,tag=a6m5_stand] at @s run function misc:a6m5
execute as @e[type=minecart,tag=a6m5_seat] at @s run function misc:a6m5
execute as @e[type=armor_stand,tag=spawn_a6m5] at @s run function summon_plane:a6m5

#camel
execute as @a at @s if entity @e[type=minecart,tag=camel_seat,distance=..0.4] run function title:camel
execute as @a at @s if entity @e[type=minecart,tag=camel_seat,distance=..0.4] if entity @e[scores={camel_fuel=1..},type=armor_stand,tag=camel_stand,limit=1,sort=nearest,distance=..2] run function planes:camel
execute as @a at @s if entity @e[type=minecart,tag=camel_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:8b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:8b} 1
execute as @a at @s unless entity @e[type=minecart,tag=camel_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:8b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:8b} 1
execute as @a at @s unless entity @e[type=minecart,tag=camel_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_8
execute as @a at @s if score @s engine_toggle_8 matches 2.. run scoreboard players set @s engine_toggle_8 0
execute as @e[type=armor_stand,tag=camel_stand] at @s run function misc:camel
execute as @e[type=minecart,tag=camel_seat] at @s run function misc:camel
execute as @e[type=armor_stand,tag=spawn_camel] at @s run function summon_plane:camel

#fokker
execute as @a at @s if entity @e[type=minecart,tag=fokker_seat,distance=..0.4] run function title:fokker
execute as @a at @s if entity @e[type=minecart,tag=fokker_seat,distance=..0.4] if entity @e[scores={fokker_fuel=1..},type=armor_stand,tag=fokker_stand,limit=1,sort=nearest,distance=..2] run function planes:fokker
execute as @a at @s if entity @e[type=minecart,tag=fokker_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:9b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:9b} 1
execute as @a at @s unless entity @e[type=minecart,tag=fokker_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:9b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:9b} 1
execute as @a at @s unless entity @e[type=minecart,tag=fokker_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_9
execute as @a at @s if score @s engine_toggle_9 matches 2.. run scoreboard players set @s engine_toggle_9 0
execute as @e[type=armor_stand,tag=fokker_stand] at @s run function misc:fokker
execute as @e[type=minecart,tag=fokker_seat] at @s run function misc:fokker
execute as @e[type=armor_stand,tag=spawn_fokker] at @s run function summon_plane:fokker

#empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] run function title:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @e[scores={empty_fuel=1..},type=armor_stand,tag=empty_stand,limit=1,sort=nearest,distance=..2] run function planes:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:10b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:10b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:10b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:10b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_10
execute as @a at @s if score @s engine_toggle_10 matches 2.. run scoreboard players set @s engine_toggle_10 0
execute as @e[type=armor_stand,tag=empty_stand] at @s run function misc:empty
execute as @e[type=minecart,tag=empty_seat] at @s run function misc:empty
execute as @e[type=armor_stand,tag=spawn_empty] at @s run function summon_plane:empty

#Mig 15
execute as @a at @s if entity @e[type=minecart,tag=mig_seat,distance=..0.4] run function title:mig
execute as @a at @s if entity @e[type=minecart,tag=mig_seat,distance=..0.4] if entity @e[scores={mig_fuel=1..},type=armor_stand,tag=mig_stand,limit=1,sort=nearest,distance=..2] run function planes:mig
execute as @a at @s if entity @e[type=minecart,tag=mig_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:11b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:11b} 1
execute as @a at @s unless entity @e[type=minecart,tag=mig_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:11b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:11b} 1
execute as @a at @s unless entity @e[type=minecart,tag=mig_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_11
execute as @a at @s if score @s engine_toggle_11 matches 2.. run scoreboard players set @s engine_toggle_11 0
execute as @e[type=armor_stand,tag=mig_stand] at @s run function misc:mig
execute as @e[type=minecart,tag=mig_seat] at @s run function misc:mig
execute as @e[type=armor_stand,tag=spawn_mig] at @s run function summon_plane:mig

#p38
execute as @a at @s if entity @e[type=minecart,tag=p38_seat,distance=..0.4] run function title:p38
execute as @a at @s if entity @e[type=minecart,tag=p38_seat,distance=..0.4] if entity @e[scores={p38_fuel=1..},type=armor_stand,tag=p38_stand,limit=1,sort=nearest,distance=..2] run function planes:p38
execute as @a at @s if entity @e[type=minecart,tag=p38_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:12b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:12b} 1
execute as @a at @s unless entity @e[type=minecart,tag=p38_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:12b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:12b} 1
execute as @a at @s unless entity @e[type=minecart,tag=p38_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_12
execute as @a at @s if score @s engine_toggle_12 matches 2.. run scoreboard players set @s engine_toggle_12 0
execute as @e[type=armor_stand,tag=p38_stand] at @s run function misc:p38
execute as @e[type=minecart,tag=p38_seat] at @s run function misc:p38
execute as @e[type=armor_stand,tag=spawn_p38] at @s run function summon_plane:p38

#f6f
execute as @a at @s if entity @e[type=minecart,tag=f6f_seat,distance=..0.4] run function title:f6f
execute as @a at @s if entity @e[type=minecart,tag=f6f_seat,distance=..0.4] if entity @e[scores={f6f_fuel=1..},type=armor_stand,tag=f6f_stand,limit=1,sort=nearest,distance=..4] run function planes:f6f
execute as @a at @s if entity @e[type=minecart,tag=f6f_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:13b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:13b} 1
execute as @a at @s unless entity @e[type=minecart,tag=f6f_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:13b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:13b} 1
execute as @a at @s unless entity @e[type=minecart,tag=f6f_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_13
execute as @a at @s if score @s engine_toggle_13 matches 2.. run scoreboard players set @s engine_toggle_13 0
execute as @e[type=armor_stand,tag=f6f_stand] at @s run function misc:f6f
execute as @e[type=armor_stand,tag=f6f_model] at @s run function misc:f6f
execute as @e[type=minecart,tag=f6f_seat] at @s run function misc:f6f
execute as @e[type=armor_stand,tag=spawn_f6f] at @s run function summon_plane:f6f

#empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] run function title:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @e[scores={empty_fuel=1..},type=armor_stand,tag=empty_stand,limit=1,sort=nearest,distance=..2] run function planes:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:14b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:14b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:14b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:14b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_14
execute as @a at @s if score @s engine_toggle_14 matches 2.. run scoreboard players set @s engine_toggle_14 0
execute as @e[type=armor_stand,tag=empty_stand] at @s run function misc:empty
execute as @e[type=minecart,tag=empty_seat] at @s run function misc:empty
execute as @e[type=armor_stand,tag=spawn_empty] at @s run function summon_plane:empty

#yak
execute as @a at @s if entity @e[type=minecart,tag=yak_seat,distance=..0.4] run function title:yak
execute as @a at @s if entity @e[type=minecart,tag=yak_seat,distance=..0.4] if entity @e[scores={yak_fuel=1..},type=armor_stand,tag=yak_stand,limit=1,sort=nearest,distance=..2] run function planes:yak
execute as @a at @s if entity @e[type=minecart,tag=yak_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:15b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:15b} 1
execute as @a at @s unless entity @e[type=minecart,tag=yak_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:15b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:15b} 1
execute as @a at @s unless entity @e[type=minecart,tag=yak_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_15
execute as @a at @s if score @s engine_toggle_15 matches 2.. run scoreboard players set @s engine_toggle_15 0
execute as @e[type=armor_stand,tag=yak_stand] at @s run function misc:yak
execute as @e[type=minecart,tag=yak_seat] at @s run function misc:yak
execute as @e[type=armor_stand,tag=spawn_yak] at @s run function summon_plane:yak

#empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] run function title:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @e[scores={empty_fuel=1..},type=armor_stand,tag=empty_stand,limit=1,sort=nearest,distance=..2] run function planes:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:16b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:16b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:16b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:16b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_16
execute as @a at @s if score @s engine_toggle_16 matches 2.. run scoreboard players set @s engine_toggle_16 0
execute as @e[type=armor_stand,tag=empty_stand] at @s run function misc:empty
execute as @e[type=minecart,tag=empty_seat] at @s run function misc:empty
execute as @e[type=armor_stand,tag=spawn_empty] at @s run function summon_plane:empty

#empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] run function title:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @e[scores={empty_fuel=1..},type=armor_stand,tag=empty_stand,limit=1,sort=nearest,distance=..2] run function planes:empty
execute as @a at @s if entity @e[type=minecart,tag=empty_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:17b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:17b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:17b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:17b} 1
execute as @a at @s unless entity @e[type=minecart,tag=empty_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_17
execute as @a at @s if score @s engine_toggle_17 matches 2.. run scoreboard players set @s engine_toggle_17 0
execute as @e[type=armor_stand,tag=empty_stand] at @s run function misc:empty
execute as @e[type=minecart,tag=empty_seat] at @s run function misc:empty
execute as @e[type=armor_stand,tag=spawn_empty] at @s run function summon_plane:empty

#a5m4
execute as @a at @s if entity @e[type=minecart,tag=a5m4_seat,distance=..0.4] run function title:a5m4
execute as @a at @s if entity @e[type=minecart,tag=a5m4_seat,distance=..0.4] if entity @e[scores={a5m4_fuel=1..},type=armor_stand,tag=a5m4_stand,limit=1,sort=nearest,distance=..2] run function planes:a5m4
execute as @a at @s if entity @e[type=minecart,tag=a5m4_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:18b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:18b} 1
execute as @a at @s unless entity @e[type=minecart,tag=a5m4_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:18b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:18b} 1
execute as @a at @s unless entity @e[type=minecart,tag=a5m4_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_18
execute as @a at @s if score @s engine_toggle_18 matches 2.. run scoreboard players set @s engine_toggle_18 0
execute as @e[type=armor_stand,tag=a5m4_stand] at @s run function misc:a5m4
execute as @e[type=minecart,tag=a5m4_seat] at @s run function misc:a5m4
execute as @e[type=armor_stand,tag=spawn_a5m4] at @s run function summon_plane:a5m4

#fw190
execute as @a at @s if entity @e[type=minecart,tag=fw190_seat,distance=..0.4] run function title:fw190
execute as @a at @s if entity @e[type=minecart,tag=fw190_seat,distance=..0.4] if entity @e[scores={fw190_fuel=1..},type=armor_stand,tag=fw190_stand,limit=1,sort=nearest,distance=..2] run function planes:fw190
execute as @a at @s if entity @e[type=minecart,tag=fw190_seat,distance=..0.4] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:19b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:19b} 1
execute as @a at @s unless entity @e[type=minecart,tag=fw190_seat,distance=..0.4] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:19b}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:19b} 1
execute as @a at @s unless entity @e[type=minecart,tag=fw190_seat,distance=..0.4] run scoreboard players reset @s engine_toggle_19
execute as @a at @s if score @s engine_toggle_19 matches 2.. run scoreboard players set @s engine_toggle_19 0
execute as @e[type=armor_stand,tag=fw190_stand] at @s run function misc:fw190
execute as @e[type=minecart,tag=fw190_seat] at @s run function misc:fw190
execute as @e[type=armor_stand,tag=spawn_fw190] at @s run function summon_plane:fw190




execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:green_terracotta",tag:{CustomModelData:1001}}]}] run give @s minecraft:stick{display:{Name:'{"text":"Bomb","italic":false}'},CustomModelData:1009} 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:green_terracotta",tag:{CustomModelData:1001}}]}] run clear @s green_terracotta{CustomModelData:1001}

#player
execute as @a at @s run execute store result score @s rot_x run data get entity @s Rotation[0]
execute as @a at @s if score @s rot_x matches ..0 run scoreboard players operation @s rot_x += rot_360 rot_diff
execute as @a at @s run scoreboard players operation @s rot_diff -= @s rot_x

#fuel
execute as @e[type=armor_stand,tag=pump] at @s run function misc:pump

#helmet
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1001}}]}] run item replace entity @s armor.head with minecraft:gold_nugget{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1004} 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1004}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",Slot:103b,tag:{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1004}}]}] run give @s minecraft:leather_helmet{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1001} 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1004}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",Slot:103b,tag:{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1004}}]}] run clear @s minecraft:gold_nugget{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1004} 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",Slot:103b,tag:{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1004}}]}] run effect give @s minecraft:night_vision 1 1 true

kill @e[type=item,nbt={Item:{id:"minecraft:green_terracotta",Count:1b,tag:{CustomModelData:1001}}}]

execute as @a[scores={altitude=350..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:'{"text":"Pilot\'s Helmet","italic":false}'},CustomModelData:1004}}]}] run effect give @s wither 1 1 true

#crafting table place
execute as @e[type=armor_stand,tag=place] at @s run function place_table:place
#crafting table remove
execute as @e[type=armor_stand,tag=workbench] at @s if block ~ ~ ~ air run function place_table:destroy
#custom crafting table
execute as @e[type=armor_stand,tag=workbench] at @s run function misc:crafting



execute as @a at @s store result score @s altitude run data get entity @s Pos[1]


scoreboard players set @a click 0

scoreboard players set @a dropped 0
scoreboard players set @a dropped2 0
execute as @a at @s run scoreboard players set @s seat 0
scoreboard players add @a randomizer 1
execute as @a at @s if score @s randomizer matches 20.. run scoreboard players set @s randomizer 0
scoreboard players add @a fueltimer 1
execute as @a at @s if score @s fueltimer matches 100.. run scoreboard players set @s fueltimer 0
scoreboard players add @e[type=armor_stand,tag=pump] fueltimer 1
scoreboard players add @e[type=armor_stand] planefuel 1
execute as @e[type=armor_stand] at @s if score @s planefuel matches 20.. run scoreboard players set @s planefuel 0
execute as @e[type=armor_stand,tag=pump] at @s if score @s fueltimer matches 200.. run scoreboard players set @s fueltimer 0
execute as @a at @s if score spawn_chan spawner matches 5.. run scoreboard players set spawn_chan spawner 0
execute as @a[scores={cooldown=1..}] at @s run scoreboard players remove @s cooldown 1
scoreboard players add @e[type=armor_stand,tag=pump,scores={fueltimer=199}] fueldispensed 1


execute as @e[tag=109_stand] at @e[tag=109_stand] unless entity @e[tag=109_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:109
execute as @e[tag=109_stand] at @e[tag=109_stand] unless entity @e[tag=109_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=109_stand] at @e[tag=109_stand] unless entity @e[tag=109_seat,distance=..5] run kill @e[tag=109_stand,distance=..5]

execute as @e[tag=a5m4_stand] at @e[tag=a5m4_stand] unless entity @e[tag=a5m4_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:a5m4
execute as @e[tag=a5m4_stand] at @e[tag=a5m4_stand] unless entity @e[tag=a5m4_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=a5m4_stand] at @e[tag=a5m4_stand] unless entity @e[tag=a5m4_seat,distance=..5] run kill @e[tag=a5m4_stand,distance=..5]

execute as @e[tag=a6m5_stand] at @e[tag=a6m5_stand] unless entity @e[tag=a6m5_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:a6m5
execute as @e[tag=a6m5_stand] at @e[tag=a6m5_stand] unless entity @e[tag=a6m5_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=a6m5_stand] at @e[tag=a6m5_stand] unless entity @e[tag=a6m5_seat,distance=..5] run kill @e[tag=a6m5_stand,distance=..5]

execute as @e[tag=camel_stand] at @e[tag=camel_stand] unless entity @e[tag=camel_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:camel
execute as @e[tag=camel_stand] at @e[tag=camel_stand] unless entity @e[tag=camel_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=camel_stand] at @e[tag=camel_stand] unless entity @e[tag=camel_seat,distance=..5] run kill @e[tag=camel_stand,distance=..5]

execute as @e[tag=f4u_stand] at @e[tag=f4u_stand] unless entity @e[tag=f4u_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:f4u
execute as @e[tag=f4u_stand] at @e[tag=f4u_stand] unless entity @e[tag=f4u_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=f4u_stand] at @e[tag=f4u_stand] unless entity @e[tag=f4u_seat,distance=..5] run kill @e[tag=f4u_model,distance=..5]
execute as @e[tag=f4u_stand] at @e[tag=f4u_stand] unless entity @e[tag=f4u_seat,distance=..5] run kill @e[tag=f4u_stand,distance=..5]

execute as @e[tag=f6f_stand] at @e[tag=f6f_stand] unless entity @e[tag=f6f_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:f6f
execute as @e[tag=f6f_stand] at @e[tag=f6f_stand] unless entity @e[tag=f6f_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=f6f_stand] at @e[tag=f6f_stand] unless entity @e[tag=f6f_seat,distance=..5] run kill @e[tag=f6f_model,distance=..5]
execute as @e[tag=f6f_stand] at @e[tag=f6f_stand] unless entity @e[tag=f6f_seat,distance=..5] run kill @e[tag=f6f_stand,distance=..5]

execute as @e[tag=fokker_stand] at @e[tag=fokker_stand] unless entity @e[tag=fokker_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:fokker
execute as @e[tag=fokker_stand] at @e[tag=fokker_stand] unless entity @e[tag=fokker_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=fokker_stand] at @e[tag=fokker_stand] unless entity @e[tag=fokker_seat,distance=..5] run kill @e[tag=fokker_stand,distance=..5]

execute as @e[tag=fw190_stand] at @e[tag=fw190_stand] unless entity @e[tag=fw190_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:fw190
execute as @e[tag=fw190_stand] at @e[tag=fw190_stand] unless entity @e[tag=fw190_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=fw190_stand] at @e[tag=fw190_stand] unless entity @e[tag=fw190_seat,distance=..5] run kill @e[tag=fw190_stand,distance=..5]

execute as @e[tag=mig_stand] at @e[tag=mig_stand] unless entity @e[tag=mig_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:mig
execute as @e[tag=mig_stand] at @e[tag=mig_stand] unless entity @e[tag=mig_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=mig_stand] at @e[tag=mig_stand] unless entity @e[tag=mig_seat,distance=..5] run kill @e[tag=mig_stand,distance=..5]

execute as @e[tag=mustang_stand] at @e[tag=mustang_stand] unless entity @e[tag=mustang_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:mustang
execute as @e[tag=mustang_stand] at @e[tag=mustang_stand] unless entity @e[tag=mustang_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=mustang_stand] at @e[tag=mustang_stand] unless entity @e[tag=mustang_seat,distance=..5] run kill @e[tag=mustang_stand,distance=..5]

execute as @e[tag=p38_stand] at @e[tag=p38_stand] unless entity @e[tag=p38_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:p38
execute as @e[tag=p38_stand] at @e[tag=p38_stand] unless entity @e[tag=p38_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=p38_stand] at @e[tag=p38_stand] unless entity @e[tag=p38_seat,distance=..5] run kill @e[tag=p38_stand,distance=..5]

execute as @e[tag=spitfire_stand] at @e[tag=spitfire_stand] unless entity @e[tag=spitfire_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:spitfire
execute as @e[tag=spitfire_stand] at @e[tag=spitfire_stand] unless entity @e[tag=spitfire_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=spitfire_stand] at @e[tag=spitfire_stand] unless entity @e[tag=spitfire_seat,distance=..5] run kill @e[tag=spitfire_stand,distance=..5]

execute as @e[tag=yak_stand] at @e[tag=yak_stand] unless entity @e[tag=yak_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:yak
execute as @e[tag=yak_stand] at @e[tag=yak_stand] unless entity @e[tag=yak_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=yak_stand] at @e[tag=yak_stand] unless entity @e[tag=yak_seat,distance=..5] run kill @e[tag=yak_stand,distance=..5]

execute as @e[tag=zero_stand] at @e[tag=zero_stand] unless entity @e[tag=zero_seat,distance=..5] run execute as @p[sort=nearest,distance=..10] run function give:zero
execute as @e[tag=zero_stand] at @e[tag=zero_stand] unless entity @e[tag=zero_seat,distance=..5] run kill @e[type=item,sort=nearest,distance=..5,name="Minecart"]
execute as @e[tag=zero_stand] at @e[tag=zero_stand] unless entity @e[tag=zero_seat,distance=..5] run kill @e[tag=zero_stand,distance=..5]